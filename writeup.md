# The Narrative Approach to Java Programming

## Single Responsibility: From Classes to Methods

### Method-Level Responsibility

The Single Responsibility Principle is traditionally taught as:

> A class should have only one reason to change.

However, this principle extends naturally to the method level:

> A method should do exactly one thing, and do it well.

When methods take on multiple responsibilities, they become:
- Harder to understand
- More difficult to test
- More prone to bugs
- Less reusable
- More resistant to change

### Objects as Living Actors, Not Lifeless Data

Traditional object-oriented teaching often treats objects as passive data containers with operations. This misses the true essence of object-oriented thinking.

In the narrative approach:
- Objects are **actors** with agency and purpose
- Methods are **behaviors** these actors can perform
- Each behavior should be coherent and singular in purpose
- Objects communicate through **messages**, not just function calls

## Code as Storytelling

### The Narrative Structure of Good Code

Well-written code tells a story that unfolds naturally:
- Classes are the cast of characters
- Methods are the actions these characters perform
- The main flow is the plot
- Helper methods are subplots or background details

A reader should be able to understand the story at different levels of detail, just as a reader of a novel can follow the main plot while appreciating the nuances.

### From Monolithic Methods to Narrative Flow

#### Anti-Pattern: The Monolithic Method

```java
public void processBooking(Seat seat, User user) {
    // Check if seat exists
    if (seat == null) {
        throw new IllegalArgumentException("Seat cannot be null");
    }
    
    // Check if user exists
    if (user == null) {
        throw new IllegalArgumentException("User cannot be null");
    }
    
    // Check seat availability
    if (seat.getStatus() != SeatStatus.AVAILABLE) {
        throw new SeatUnavailableException("Seat " + seat.getRow() + seat.getNumber() + " is not available");
    }
    
    // Update seat status
    seat.setStatus(SeatStatus.BOOKED);
    seatRepository.save(seat);
    
    // Create booking record
    Booking booking = new Booking();
    booking.setId(UUID.randomUUID());
    booking.setSeat(seat);
    booking.setUser(user);
    booking.setStatus(BookingStatus.CONFIRMED);
    booking.setBookingTime(LocalDateTime.now());
    bookingRepository.save(booking);
    
    // Send confirmation email
    EmailDetails email = new EmailDetails();
    email.setTo(user.getEmail());
    email.setSubject("Your booking confirmation");
    email.setBody("Your booking for seat " + seat.getRow() + seat.getNumber() + " is confirmed.");
    emailService.sendEmail(email);
    
    // Update inventory
    inventoryService.decrementAvailableSeats(seat.getScreen(), 1);
    
    // Log the transaction
    logger.info("Booking completed for user {} for seat {}{}", 
               user.getId(), seat.getRow(), seat.getNumber());
}
```

This approach mixes multiple responsibilities and tells a confusing, cluttered story.

#### Pattern: The Narrative Method

```java
public void processBooking(Seat seat, User user) {
    validateBookingRequest(seat, user);
    
    if (!isSeatAvailable(seat)) {
        throw new SeatUnavailableException(seat);
    }
    
    reserveSeat(seat);
    Booking booking = createBookingRecord(seat, user);
    notifyUser(booking, user);
    updateInventory(seat);
    logTransaction(booking);
}

private void validateBookingRequest(Seat seat, User user) {
    requireNonNull(seat, "Seat cannot be null");
    requireNonNull(user, "User cannot be null");
}

private boolean isSeatAvailable(Seat seat) {
    return seat.getStatus() == SeatStatus.AVAILABLE;
}

private void reserveSeat(Seat seat) {
    seat.setStatus(SeatStatus.BOOKED);
    seatRepository.save(seat);
}

private Booking createBookingRecord(Seat seat, User user) {
    Booking booking = new Booking(UUID.randomUUID(), seat, user, LocalDateTime.now());
    booking.setStatus(BookingStatus.CONFIRMED);
    bookingRepository.save(booking);
    return booking;
}

private void notifyUser(Booking booking, User user) {
    EmailDetails email = createConfirmationEmail(booking, user);
    emailService.sendEmail(email);
}

private EmailDetails createConfirmationEmail(Booking booking, User user) {
    Seat seat = booking.getSeat();
    return new EmailDetails(
        user.getEmail(),
        "Your booking confirmation",
        "Your booking for seat " + seat.getRow() + seat.getNumber() + " is confirmed."
    );
}

private void updateInventory(Seat seat) {
    inventoryService.decrementAvailableSeats(seat.getScreen(), 1);
}

private void logTransaction(Booking booking) {
    Seat seat = booking.getSeat();
    User user = booking.getUser();
    logger.info("Booking completed for user {} for seat {}{}", 
               user.getId(), seat.getRow(), seat.getNumber());
}
```

This approach tells a clear, coherent story with a natural flow, where each method has a single, well-defined purpose.

### Benefits of the Narrative Approach

1. **Enhanced Readability**
   - The main method reads like a table of contents
   - Supporting methods provide details at the appropriate level
   - Names clearly express intent

2. **Improved Testability**
   - Each method can be tested in isolation
   - Edge cases can be thoroughly covered
   - Behaviors can be verified independently

3. **Greater Maintainability**
   - Changes to one behavior don't affect others
   - Bugs are isolated to specific methods
   - New behaviors can be added without disrupting existing ones

4. **Increased Reusability**
   - Small, focused methods can be composed in different ways
   - Common behaviors can be shared across different use cases
   - Methods can be overridden in subclasses more precisely

5. **Better Debugging**
   - Problems can be pinpointed to specific behaviors
   - Stack traces point to more specific locations
   - The flow of execution is clearer

## Principles of Narrative Coding

### 1. Method Naming as Storytelling

Method names should be verbs or verb phrases that clearly convey the action being performed:

- `processBooking()` → Too vague
- `reserveSeatForUser()` → Clear and specific
- `validateCredentials()` → Explicit action
- `isEligibleForDiscount()` → Question format for boolean returns

### 2. The Stepdown Rule

Organize methods in a stepdown fashion, where the narrative flows from high-level methods to increasingly detailed methods:

```java
public void checkoutShoppingCart() {
    validateCart();
    applyDiscounts();
    calculateTotalPrice();
    processPayment();
    createOrder();
    sendConfirmation();
}

private void validateCart() {
    validateItems();
    validateCustomer();
    validateShippingAddress();
}

private void validateItems() {
    // Even more detailed implementation
}
```

### 3. The Command-Query Separation

Methods should either:
- Perform an action that changes state (commands)
- Return information without side effects (queries)

Mixing the two creates confusing narratives where it's unclear what's happening.

```java
// Command (changes state)
public void reserveSeat(Seat seat) {
    seat.setStatus(SeatStatus.RESERVED);
    seatRepository.save(seat);
}

// Query (returns information without side effects)
public boolean isSeatAvailable(Seat seat) {
    return seat.getStatus() == SeatStatus.AVAILABLE;
}

// Problematic mixed method (both changes state and returns information)
public boolean tryReserveSeat(Seat seat) {
    if (seat.getStatus() == SeatStatus.AVAILABLE) {
        seat.setStatus(SeatStatus.RESERVED);
        seatRepository.save(seat);
        return true;
    }
    return false;
}
```

### 4. Parameter Object Pattern for Clarity

When methods require multiple related parameters, create a parameter object to organize them:

```java
// Before: Many parameters make the story harder to follow
public void bookSeat(User user, Seat seat, LocalDateTime showTime, 
                     PaymentMethod paymentMethod, String promoCode) {
    // Implementation
}

// After: Parameter object creates a clearer narrative
public void bookSeat(BookingRequest request) {
    // Implementation using request.getUser(), request.getSeat(), etc.
}
```

### 5. Consistent Abstraction Levels

Within a method, all operations should be at the same level of abstraction:

```java
// Inconsistent abstraction levels
public void processOrder(Order order) {
    validateOrder(order);  // High-level
    order.setStatus(OrderStatus.PROCESSING);  // Low-level
    paymentGateway.charge(order.getTotal(), order.getPaymentMethod());  // Mid-level
    sendConfirmationEmail(order);  // High-level
}

// Consistent abstraction levels
public void processOrder(Order order) {
    validateOrder(order);
    updateOrderStatus(order);
    chargeCustomer(order);
    notifyCustomer(order);
}

private void updateOrderStatus(Order order) {
    order.setStatus(OrderStatus.PROCESSING);
}

private void chargeCustomer(Order order) {
    paymentGateway.charge(order.getTotal(), order.getPaymentMethod());
}
```

## Applying the Narrative Approach to the Movie Booking System

### Example: The Booking Process

The booking process becomes a coherent narrative told through a hierarchy of methods:

```java
public class BookingService {
    // Main narrative flow
    public Booking createBooking(User user, ShowTime showTime, Set<SeatCoordinate> seatCoordinates) {
        validateBookingRequest(user, showTime, seatCoordinates);
        
        Set<Seat> seats = identifyRequestedSeats(showTime, seatCoordinates);
        ensureAllSeatsAvailable(seats);
        
        Set<Seat> reservedSeats = reserveSeatsAtomically(seats);
        Booking booking = recordBooking(user, showTime, reservedSeats);
        scheduleReservationExpiration(booking);
        
        notifyUserOfReservation(booking);
        
        return booking;
    }
    
    // Supporting narratives (each with a single responsibility)
    private void validateBookingRequest(User user, ShowTime showTime, Set<SeatCoordinate> seatCoordinates) {
        ensureUserIsAuthenticated(user);
        ensureShowTimeIsValid(showTime);
        ensureRequestIncludesSomeSeats(seatCoordinates);
    }
    
    private Set<Seat> identifyRequestedSeats(ShowTime showTime, Set<SeatCoordinate> coordinates) {
        return coordinates.stream()
            .map(coordinate -> findSeatByCoordinate(showTime, coordinate))
            .collect(Collectors.toSet());
    }
    
    private void ensureAllSeatsAvailable(Set<Seat> seats) {
        Set<Seat> unavailableSeats = findUnavailableSeats(seats);
        
        if (!unavailableSeats.isEmpty()) {
            throw new SeatsUnavailableException(unavailableSeats);
        }
    }
    
    private Set<Seat> findUnavailableSeats(Set<Seat> seats) {
        return seats.stream()
            .filter(seat -> !isSeatAvailable(seat))
            .collect(Collectors.toSet());
    }
    
    private boolean isSeatAvailable(Seat seat) {
        return seat.getStatus() == SeatStatus.AVAILABLE;
    }
    
    private Set<Seat> reserveSeatsAtomically(Set<Seat> seats) {
        lockSeatsForReservation(seats);
        
        try {
            return seats.stream()
                .map(this::reserveSeat)
                .collect(Collectors.toSet());
        } finally {
            unlockSeats(seats);
        }
    }
    
    private Seat reserveSeat(Seat seat) {
        seat.setStatus(SeatStatus.RESERVED);
        return seatRepository.save(seat);
    }
    
    private Booking recordBooking(User user, ShowTime showTime, Set<Seat> seats) {
        Booking booking = new Booking(
            UUID.randomUUID(),
            user,
            showTime,
            seats,
            BookingStatus.RESERVED,
            LocalDateTime.now()
        );
        
        return bookingRepository.save(booking);
    }
    
    private void scheduleReservationExpiration(Booking booking) {
        int expirationMinutes = configurationService.getReservationExpirationMinutes();
        bookingTimeoutManager.scheduleTimeout(booking, expirationMinutes);
    }
    
    private void notifyUserOfReservation(Booking booking) {
        Notification notification = createReservationNotification(booking);
        notificationService.sendNotification(notification);
    }
}
```


This narrative approach makes the booking process clear, with each method telling one part of the story at the appropriate level of detail.

## Conclusion

Code written with the narrative approach becomes more than just instructions for a computer—it becomes a communication medium between developers, telling the story of the domain in a clear, engaging way.

By treating objects as living actors and methods as singular behaviors, we create systems that not only function correctly but also express the underlying domain concepts with clarity and precision.

A well-written narrative codebase distinguishes exceptional developers from ordinary ones. It transforms coding from a technical exercise into a form of storytelling, where the plot unfolds naturally and the characters (objects) interact in meaningful ways.

In the movie booking system and beyond, embracing the narrative approach leads to code that is not just correct, but compelling—code that tells a story worth reading.



# Java Programming Philosophy
## A Deep Understanding Beyond Syntax

### Foundational Philosophical Principles

#### 1. Impersonation of Classes

The true essence of object-oriented programming begins with impersonation. When designing a class, you must transcend technical considerations and genuinely embody the entity you're modeling:

- **Ask as the entity**: "If I were this Movie, would I let someone change my title after I'm created?"
- **Consider authority boundaries**: "As a Person, who has the right to know my private information?"
- **Reflect on relationships**: "As a Theatre, how do I relate to my Screens? Do I own them or merely reference them?"

This mental shift transforms coding from a technical exercise into a faithful representation of reality.

#### 2. True Encapsulation Beyond Getters and Setters

Conventional teaching treats encapsulation as simply "private fields with getters and setters," but true encapsulation is about authority over information:

- **Selective information disclosure**: Not every field deserves a getter
- **Contextual access control**: Some information should only be accessible to specific callers
- **Authority-based mutations**: State changes require proper authorization

```java
public class Actor extends Person {
    private final BigDecimal remuneration;
    
    // NO public getter for remuneration - information hiding
    
    // Contextual access methods
    public BigDecimal getRemunerationForAgent(Agent agent) {
        if (this.isRepresentedBy(agent)) {
            return this.remuneration;
        }
        throw new UnauthorizedAccessException("You are not my agent");
    }
    
    // Tax authorities can access my income information
    public BigDecimal getRemunerationForTaxAuthority(TaxAuthority authority) {
        if (authority.hasJurisdictionOver(this)) {
            return this.remuneration;
        }
        throw new UnauthorizedAccessException("You have no jurisdiction over me");
    }
}
```

#### 3. Semantic Type Selection

Type selection is not merely a technical decision but a semantic one that enforces real-world constraints:

- **Enums for closed categories**: If a value exists within a defined set in the real world, it should be an enum
- **Domain-specific types**: Create custom types for domain concepts, not just primitives
- **Type hierarchy as domain taxonomy**: Inheritance should reflect real-world classification

```java
// Not just a String - a specialized type with semantic validation
public final class EmailAddress {
    private final String value;
    
    public EmailAddress(String value) {
        if (!isValidEmail(value)) {
            throw new InvalidEmailException(value);
        }
        this.value = value;
    }
    
    // No setter - immutable after creation
    
    public String getValue() {
        return value;
    }
    
    private boolean isValidEmail(String email) {
        // Validation logic
    }
}
```

#### 4. Immutable Core Identity

Entities in the real world have immutable aspects of their identity. This should be reflected in code:

- **Final fields for identity attributes**: Core identity aspects should be final
- **Immutable collections**: Relationships that define identity should use immutable collections
- **Value objects**: Complex values that don't have separate identity should be immutable

```java
public final class Movie {
    private final UUID id;
    private final String title; // Immutable - defines identity
    private final LocalDate releaseDate; // Immutable
    private final Set<MovieGenre> genres; // Immutable set
    
    // Constructor creates defensive copies
    public Movie(String title, LocalDate releaseDate, Set<MovieGenre> genres) {
        this.id = UUID.randomUUID();
        this.title = Objects.requireNonNull(title);
        this.releaseDate = Objects.requireNonNull(releaseDate);
        this.genres = Collections.unmodifiableSet(new HashSet<>(genres));
    }
    
    // No setters for identity fields
}
```

#### 5. Domain-Driven Flexibility

Some domains require flexibility while maintaining type safety:

- **Type-safe extensibility**: Allow extension while preserving type constraints
- **Domain registries**: Support registration of domain-specific types
- **Bounded contexts**: Recognize when the same concept has different meanings in different contexts

```java
// Theatre-specific seat type system with type safety
public final class SeatTypeRegistry {
    private final Map<String, SeatType> types = new HashMap<>();
    
    // Register a new type (only at theatre setup)
    public void registerType(String code, String name, BigDecimal priceMultiplier) {
        if (types.containsKey(code)) {
            throw new DuplicateSeatTypeException(code);
        }
        types.put(code, new SeatType(code, name, priceMultiplier));
    }
    
    // Type-safe lookup
    public SeatType getType(String code) {
        SeatType type = types.get(code);
        if (type == null) {
            throw new UnknownSeatTypeException(code);
        }
        return type;
    }
    
    // Inner class for type safety
    public static final class SeatType {
        private final String code;
        private final String name;
        private final BigDecimal priceMultiplier;
        
        // Private constructor, only created through registry
        private SeatType(String code, String name, BigDecimal priceMultiplier) {
            this.code = code;
            this.name = name;
            this.priceMultiplier = priceMultiplier;
        }
        
        // Getters but no setters - immutable
    }
}
```

#### 6. Deep Exploration of JDK

True understanding requires delving into the implementation of core Java classes:

- **String isn't magical**: It's a class with methods, not a primitive
- **Object is the foundation**: Understanding Object's methods explains much of Java's behavior
- **Contracts in interfaces**: Interfaces define behavioral contracts that implementations must fulfill

```java
// Understanding how compareTo works
public class Price implements Comparable<Price> {
    private final BigDecimal amount;
    private final Currency currency;
    
    // Constructor...
    
    @Override
    public int compareTo(Price other) {
        if (!this.currency.equals(other.currency)) {
            throw new CurrencyMismatchException(this.currency, other.currency);
        }
        return this.amount.compareTo(other.amount);
    }
}
```

### Deeper Insights into Java Mechanisms

#### Understanding Collections.sort and Comparable

The Collections.sort method works on lists of any type - but only if the elements implement Comparable. This isn't magic:

```java
// Simplified view of what happens inside Collections.sort
public static <T extends Comparable<? super T>> void sort(List<T> list) {
    // Sorting algorithm that calls compareTo methods on elements
}
```

Key insights:

1. **Type parameter constraint**: `<T extends Comparable<? super T>>` ensures elements can compare themselves
2. **Interface contract**: The Comparable interface defines a contract that implementing classes must fulfill
3. **Java doesn't distinguish built-ins**: String, Integer, etc. are just classes that implement Comparable

This is why you can sort a List<String> but not a List<Actor> unless Actor implements Comparable<Actor>.

#### The Truth Behind toString(), equals(), and hashCode()

Every class inherits these methods from Object, but the default implementations are rarely sufficient:

```java
// Default Object.equals() uses reference equality (==)
public boolean equals(Object obj) {
    return this == obj;
}

// Default Object.hashCode() uses memory address
public int hashCode() {
    return System.identityHashCode(this);
}

// Default Object.toString() shows class name and hex memory address
public String toString() {
    return getClass().getName() + "@" + Integer.toHexString(hashCode());
}
```

Why built-in classes work as expected:

1. **They override these methods**: String, Integer, etc. all override these methods with meaningful implementations
2. **They fulfill contracts**: The equals-hashCode contract is maintained (equal objects have equal hash codes)
3. **They provide useful string representations**: toString() is overridden to provide human-readable output

This is why HashMap works with String keys but may fail with custom classes that don't properly override equals() and hashCode().

#### The Interface-Implementation Separation

Java's collection framework demonstrates powerful design principles:

```java
public interface List<E> extends Collection<E> {
    // Methods that define what a List can do
}

public class ArrayList<E> implements List<E> {
    // Specific implementation using an array
}

public class LinkedList<E> implements List<E> {
    // Different implementation using linked nodes
}
```

Key insights:

1. **Programming to interfaces**: Code should depend on List, not ArrayList
2. **Implementation hiding**: Clients need not know how the list is implemented
3. **Substitutability**: Any List implementation can be used interchangeably

### Applied Philosophical Coding

#### Example 1: Role and Permission System

Traditional approach:
```java
public class User {
    private String username;
    private String role; // "ADMIN", "USER", etc.
    
    public boolean canEditMovie(Movie movie) {
        return "ADMIN".equals(role);
    }
}
```

Philosophical approach:
```java
public class User {
    private final Username username; // Value object, not just a String
    private final Set<Role> roles; // Typed roles, not Strings
    
    public boolean canPerform(Permission permission, Resource resource) {
        return roles.stream()
            .anyMatch(role -> role.grants(permission, resource));
    }
}

public enum Permission {
    VIEW, EDIT, DELETE, CREATE;
}

public interface Role {
    boolean grants(Permission permission, Resource resource);
}

public class AdminRole implements Role {
    @Override
    public boolean grants(Permission permission, Resource resource) {
        // Admins can do anything
        return true;
    }
}

public class ContentManagerRole implements Role {
    @Override
    public boolean grants(Permission permission, Resource resource) {
        // Can edit and view movies but not delete them
        if (resource instanceof Movie) {
            return permission == Permission.VIEW || permission == Permission.EDIT;
        }
        return false;
    }
}
```

#### Example 2: Money and Currency

Traditional approach:
```java
public class Product {
    private String name;
    private double price; // Just a number
    
    public void applyDiscount(double percentage) {
        this.price = this.price * (1 - percentage/100);
    }
}
```

Philosophical approach:
```java
public class Product {
    private final ProductName name; // Value object
    private Price price; // Domain-specific type
    
    public void applyDiscount(Percentage percentage) {
        this.price = this.price.discountBy(percentage);
    }
}

public final class Price {
    private final BigDecimal amount; // Precise decimal, not double
    private final Currency currency;
    
    // No setters - immutable
    
    public Price discountBy(Percentage percentage) {
        return new Price(
            amount.multiply(BigDecimal.ONE.subtract(percentage.asFraction())),
            currency
        );
    }
    
    // Override equals, hashCode, toString
}

public final class Percentage {
    private final BigDecimal value;
    
    public Percentage(BigDecimal value) {
        if (value.compareTo(BigDecimal.ZERO) < 0 || value.compareTo(new BigDecimal("100")) > 0) {
            throw new IllegalArgumentException("Percentage must be between 0 and 100");
        }
        this.value = value;
    }
    
    public BigDecimal asFraction() {
        return value.divide(new BigDecimal("100"), 10, RoundingMode.HALF_UP);
    }
}
```

### JDK Deep Dive Examples

#### Example 1: String Immutability

String objects are immutable, but why?

```java
public final class String implements Comparable<String>, CharSequence {
    private final char[] value; // The actual characters, private and final
    
    // Methods like substring() create NEW String instances
    public String substring(int beginIndex, int endIndex) {
        // Returns new String, doesn't modify this one
    }
}
```

Philosophical insights:
1. **Security**: If strings were mutable, string literals shared across the application could unexpectedly change
2. **Thread safety**: Immutable objects are inherently thread-safe
3. **Hashcode stability**: Strings are often used as HashMap keys, which requires stable hash codes

#### Example 2: ArrayList vs. LinkedList

```java
// ArrayList internals (simplified)
public class ArrayList<E> implements List<E> {
    private Object[] elementData; // Backed by an array
    private int size;
    
    // Fast random access O(1)
    public E get(int index) {
        return (E) elementData[index];
    }
    
    // Potentially slow insertion O(n) if array must be copied
    public void add(int index, E element) {
        // Shift elements, possibly resize array
    }
}

// LinkedList internals (simplified)
public class LinkedList<E> implements List<E> {
    private Node<E> first;
    private Node<E> last;
    private int size;
    
    // Slow random access O(n)
    public E get(int index) {
        // Traverse list to find element
    }
    
    // Fast insertion O(1) if you already have the node
    public void add(int index, E element) {
        // Just rewire a few references
    }
}
```

Philosophical insights:
1. **Implementation consequences**: Data structure choice has profound performance implications
2. **Contract vs. implementation**: Both fulfill the List contract but with different characteristics
3. **Design tradeoffs**: No universal "best" structure, only tradeoffs for specific use cases

### Philosophy of Testing

Testing isn't just about verifying code works; it's about confirming that your model accurately reflects reality:

1. **Identity tests**: Verify immutable aspects cannot be changed
2. **Authority tests**: Verify only authorized callers can perform operations
3. **Invariant tests**: Verify that class invariants are always maintained
4. **Behavioral tests**: Verify that objects behave according to their real-world counterparts

```java
@Test
public void movieTitleCannotBeChanged() {
    Movie movie = new Movie("The Godfather", LocalDate.of(1972, 3, 24), Set.of(MovieGenre.DRAMA));
    
    // Verify no setter exists or that an exception is thrown if attempted
    assertThrows(UnsupportedOperationException.class, () -> {
        Method method = Movie.class.getDeclaredMethod("setTitle", String.class);
        method.invoke(movie, "New Title");
    });
}

@Test
public void actorRemunerationIsOnlyVisibleToAuthorizedParties() {
    Actor actor = new Actor("John", "Doe", /* other params */);
    Agent unauthorizedAgent = new Agent("Jane", "Smith");
    
    // Verify unauthorized access is prevented
    assertThrows(UnauthorizedAccessException.class, () -> {
        actor.getRemunerationForAgent(unauthorizedAgent);
    });
}
```

### The Philosophical Journey of a Java Developer

1. **Syntax phase**: Learning language constructs
2. **Pattern phase**: Applying common design patterns
3. **Library phase**: Leveraging existing frameworks
4. **Philosophical phase**: Understanding deep principles
5. **Domain modeling phase**: Creating faithful digital representations
6. **Wisdom phase**: Knowing when to apply or bend rules

The true master doesn't just know how to code; they understand why the code works, what it represents, and when certain approaches are appropriate.

### Conclusion

Programming is not mere technical instruction but a faithful reproduction of reality in digital form. By deeply understanding Java's mechanisms and applying a philosophical approach to class design, we create systems that are not just functional but truly representative of the domains they model. This mindset transforms coding from a technical activity into an exercise in digital philosophy.



## Comprehensive Coding Guidelines for Developers

Foundational Principles
1. Reality-First Approach
Guideline: Design systems that mirror real-world interactions rather than technical convenience. Software should emulate real-world processes, constraints, and validations as closely as possible.
Good Example:
public class PhoneNumber {
    private final String value;
    
    public PhoneNumber(String phoneNumber) {
        if (!isValidPhoneNumber(phoneNumber)) {
            throw new InvalidPhoneNumberException("Invalid phone number format: " + phoneNumber);
        }
        this.value = phoneNumber;
    }
    
    private boolean isValidPhoneNumber(String phoneNumber) {
        // Implementation of phone validation logic
        return phoneNumber != null && phoneNumber.matches("^\\+?[0-9]{10,15}$");
    }
}
Bad Example:
public class Customer {
    private String phoneNumber; // Any string accepted without validation
    
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber; // No validation
    }
}
Review Questions:

Does this implementation reflect how this concept works in the real world?
Have I considered all real-world constraints this entity would have?
Would a non-technical person understand this model?

2. Domain-Driven Analysis
Guideline: Begin by documenting requirements in plain language without technical jargon, focusing on what the system needs to do rather than how it will do it.
Good Example:
CopyRequirement: When a customer applies for an account, they must provide government-issued identification that proves their identity and address.
Bad Example:
CopyRequirement: Create a customer table with ID field and address field.
Review Questions:

Have I captured the business requirement without introducing implementation details?
Would a domain expert (not a developer) understand and agree with this description?
Have I captured the "why" behind this requirement?

System Architecture Guidelines
3. Actor Identification
Guideline: Identify all entities (living and non-living) that participate in the system. An actor is any person, system, or thing that interacts with or influences the process.
Good Example:
// Clear separation of actors in the domain model
public class Customer { /* ... */ }
public class BankEmployee { /* ... */ }
public class AccountApplication { /* ... */ }
public class IdentificationDocument { /* ... */ }
public class BankAccount { /* ... */ }
Bad Example:
// Mixing responsibilities of multiple actors
public class AccountCreation {
    private String customerName;
    private String employeeId;
    private String accountType;
    private String documentNumber;
    // Everything mixed together
}
Review Questions:

Have I identified all participants in this business process?
Is each actor a distinct entity with clear boundaries?
Does each actor have a single, well-defined role?

4. Characteristic & Behavior Modeling
Guideline: For each actor, define characteristics (attributes) and behaviors (methods). Question default data types against real-world constraints.
Good Example:
public class AccountType {
    private final String code;
    private final String description;
    private final BigDecimal minimumBalance;
    
    // Constructor with validation
    public AccountType(String code, String description, BigDecimal minimumBalance) {
        if (!isValidAccountTypeCode(code)) {
            throw new InvalidAccountTypeException("Unknown account type: " + code);
        }
        this.code = code;
        this.description = description;
        this.minimumBalance = minimumBalance;
    }
    
    private boolean isValidAccountTypeCode(String code) {
        // We accept specific account types only
        return code != null && Arrays.asList("SAVINGS", "CHECKING", "FIXED").contains(code);
    }
}
Bad Example:
public class BankAccount {
    private String accountType; // Any string allowed
    
    public void setAccountType(String accountType) {
        this.accountType = accountType; // No validation
    }
}
Review Questions:

Have I defined all necessary attributes for this entity?
Do the data types reflect real-world constraints?
Have I implemented proper validation for each attribute?
Do the behaviors match what this entity should be able to do in the real world?

5. Object-Oriented Principles
Ask What You Want, Not How You Want It
Guideline: Objects should be asked what to do, not how to do it. The object decides how to perform what is asked.
Good Example:
// Ask the account to withdraw money - it decides how
boolean success = account.withdraw(amount);
Bad Example:
// Telling how to do the withdrawal by manipulating properties directly
if (account.getBalance() >= amount) {
    account.setBalance(account.getBalance() - amount);
}
Review Questions:

Am I asking the object to perform an action or am I telling it how to do something?
Does the method name describe what is being done, not how?
Does the object maintain control over its internal state?

Proper Encapsulation
Guideline: Protect object integrity through careful management of access. Don't provide setters for properties that shouldn't change after creation.
Good Example:
public class BankAccount {
    private final String accountNumber; // Immutable
    private Money balance;
    
    public BankAccount(String accountNumber, Money initialDeposit) {
        validateAccountNumber(accountNumber);
        this.accountNumber = accountNumber;
        this.balance = initialDeposit;
    }
    
    // No setter for accountNumber as it should never change
    
    public boolean deposit(Money amount) {
        // Object controls how this happens
        if (amount.isPositive()) {
            this.balance = this.balance.add(amount);
            return true;
        }
        return false;
    }
}
Bad Example:
public class BankAccount {
    private String accountNumber;
    private BigDecimal balance;
    
    // Allows changing account number which should be immutable
    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }
    
    // Exposes internal state for manipulation
    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }
}
Review Questions:

Can important properties be changed after object creation?
Are there setters that shouldn't exist?
Does the object protect its internal state?

Architectural Flow
6. Process Mapping
Guideline: Define connections between actors as processes or flows, representing the business logic to be implemented.
Good Example:
public class AccountOpeningProcess {
    private final CustomerVerificationService verificationService;
    private final AccountCreationService accountService;
    
    public AccountOpeningResult execute(AccountApplication application) {
        // Clear process flow
        CustomerVerificationResult verification = verificationService.verify(
            application.getCustomer(), 
            application.getDocuments()
        );
        
        if (!verification.isSuccessful()) {
            return AccountOpeningResult.rejected(verification.getReason());
        }
        
        return accountService.createAccount(
            verification.getVerifiedCustomer(),
            application.getAccountType()
        );
    }
}
Bad Example:
public class AccountService {
    public Account createAccount(AccountApplication app) {
        // Mixing customer verification and account creation in one method
        if (app.getCustomer().getName() == null) {
            throw new IllegalArgumentException("Customer name is required");
        }
        
        // More validation mixed with creation logic...
        
        Account account = new Account();
        account.setType(app.getAccountType());
        return account;
    }
}
Review Questions:

Have I mapped out the process flow before implementing it?
Does each step in the process correspond to a defined method?
Are the connections between actors clear?

7. Layered Architecture
Guideline: Implement a clean separation of concerns using distinct layers for different responsibilities.
Good Example:
// Service layer handles business logic
public class AccountService {
    private final AccountRepository accountRepository;
    
    public Account createAccount(AccountCreationRequest request) {
        // Business logic, validation
        Account account = new Account(
            request.getAccountType(),
            request.getCustomerId(),
            request.getInitialDeposit()
        );
        
        return accountRepository.save(account);
    }
}

// Repository layer handles data access
public class AccountRepository {
    private final DataSource dataSource;
    
    public Account save(Account account) {
        // Data access code
        return persistAccount(account);
    }
}
Bad Example:
// Mixing concerns - service logic with data access
public class AccountManager {
    private final Connection dbConnection;
    
    public Account createAccount(String type, String customerId, BigDecimal amount) {
        Account account = new Account(type, customerId, amount);
        
        // Mixing business logic with data access
        try (PreparedStatement stmt = dbConnection.prepareStatement(
                "INSERT INTO accounts VALUES (?, ?, ?)")) {
            stmt.setString(1, account.getId());
            stmt.setString(2, account.getType());
            stmt.setBigDecimal(3, account.getBalance());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        
        return account;
    }
}
Review Questions:

Does each layer have a single responsibility?
Are concerns properly separated?
Could I replace one layer without changing others?

8. Single Responsibility Principle
Guideline: Each method should do exactly one thing. Complex operations should be broken down into multiple focused methods.
Good Example:
public Account openAccount(AccountApplication application) {
    validateApplication(application);
    Customer customer = getOrCreateCustomer(application.getCustomerDetails());
    Account account = createAccount(application.getAccountType(), customer);
    notifyCustomer(customer, account);
    return account;
}

private void validateApplication(AccountApplication application) {
    // Validation logic only
}

private Customer getOrCreateCustomer(CustomerDetails details) {
    // Customer creation logic only
}

private Account createAccount(String accountType, Customer customer) {
    // Account creation logic only
}

private void notifyCustomer(Customer customer, Account account) {
    // Notification logic only
}
Bad Example:
public Account openAccount(AccountApplication application) {
    // Validation mixed with creation mixed with notification
    if (application == null || application.getCustomerDetails() == null) {
        throw new IllegalArgumentException("Application incomplete");
    }
    
    Customer customer;
    if (customerExists(application.getCustomerDetails().getId())) {
        customer = getCustomer(application.getCustomerDetails().getId());
    } else {
        customer = new Customer(application.getCustomerDetails());
        saveCustomer(customer);
    }
    
    Account account = new Account(application.getAccountType(), customer);
    saveAccount(account);
    
    sendEmail(customer.getEmail(), "Your new account is ready!", 
        "Account number: " + account.getAccountNumber());
    
    return account;
}
Review Questions:

Does this method do exactly one thing?
Could I break this method into smaller, more focused methods?
Does the method name accurately describe its single responsibility?

Code Writing Guidelines
9. Narrative Programming
Guideline: Write code that tells a story. Each method should be a step in that story, making the code readable like a well-structured narrative.
Good Example:
public void processAccountApplication(Application application) {
    validateApplicationCompleteness(application);
    verifyCustomerIdentity(application.getCustomer(), application.getDocuments());
    checkCreditHistory(application.getCustomer());
    determineAccountEligibility(application);
    createCustomerAccount(application);
    dispatchWelcomeKit(application.getCustomer());
}
Bad Example:
public void process(Application app) {
    // Hard to follow narrative with cryptic method names and complex logic
    if (check(app) && verify(app.getCustomer())) {
        int score = calcScore(app.getCustomer());
        if (score > 700) {
            Account acc = createAcc(app);
            sendKit(app.getCustomer(), acc);
        } else {
            reject(app);
        }
    }
}
Review Questions:

Does the code read like a clear story?
Do method names describe meaningful steps in a process?
Could someone unfamiliar with the code understand what it does?

10. Layer Discipline
Guideline: Maintain strict layer boundaries. Services should only talk to their own repositories or other services, not repositories from other domains.
Good Example:
public class CustomerService {
    private final CustomerRepository customerRepository;
    private final DocumentService documentService; // Call another service, not its repo
    
    public Customer createCustomerWithDocuments(CustomerData customer, List<DocumentData> documents) {
        Customer newCustomer = customerRepository.save(new Customer(customer));
        documentService.attachDocumentsToCustomer(newCustomer.getId(), documents);
        return newCustomer;
    }
}
Bad Example:
public class CustomerService {
    private final CustomerRepository customerRepository;
    private final DocumentRepository documentRepository; // Wrong! Should talk to DocumentService
    
    public Customer createCustomerWithDocuments(CustomerData customer, List<DocumentData> documents) {
        Customer newCustomer = customerRepository.save(new Customer(customer));
        for (DocumentData doc : documents) {
            Document document = new Document(doc);
            document.setCustomerId(newCustomer.getId());
            documentRepository.save(document); // Breaking layer boundaries
        }
        return newCustomer;
    }
}
Review Questions:

Does this service interact only with its own repositories?
If it needs functionality from another domain, does it call the appropriate service?
Are layer boundaries clearly defined and respected?

11. Information Hiding
Guideline: Objects should not expose their internal data unnecessarily. Think of objects as people with privacy concerns.
Good Example:
public class Customer {
    private final String taxId;
    
    // Only exposes masked version for display
    public String getMaskedTaxId() {
        return "XXX-XX-" + taxId.substring(taxId.length() - 4);
    }
    
    // Full tax ID only available for specific authorized operations
    public boolean validateTaxId(String providedTaxId) {
        return this.taxId.equals(providedTaxId);
    }
}
Bad Example:
public class Customer {
    private String taxId;
    
    // Exposes sensitive information unnecessarily
    public String getTaxId() {
        return taxId;
    }
    
    public void setTaxId(String taxId) {
        this.taxId = taxId;
    }
}
Review Questions:

Is this data necessary to expose outside the class?
Have I considered privacy and information security?
Could this information be misused if exposed?

12. Meaningful Naming
Guideline: Names should fully describe the entity or action. Place information in the appropriate class based on real-world ownership.
Good Example:
class Customer {
    private Address mailingAddress;
}

class BankBranch {
    private Address branchAddress;
}
Bad Example:
class Customer {
    private Address mailingAddress;
    private Address branchAddress; // Doesn't belong to customer!
}
Review Questions:

Does this name clearly describe what the entity is or what the method does?
Is this attribute in the correct class based on real-world relationships?
Would a non-technical person understand what this name refers to?

Advanced Principles
13. Method Atomicity
Guideline: Each method should have one behavior, including conditional checks. Use private methods to encapsulate different behaviors.
Good Example:
public AccountOpeningResult processApplication(AccountApplication application) {
    if (!isApplicationComplete(application)) {
        return AccountOpeningResult.incomplete();
    }
    
    return openAccount(application);
}

private boolean isApplicationComplete(AccountApplication application) {
    return application.hasRequiredFields() && 
           application.hasRequiredDocuments();
}

private AccountOpeningResult openAccount(AccountApplication application) {
    // Account opening logic
}
Bad Example:
public AccountOpeningResult processApplication(AccountApplication application) {
    // Multiple behaviors in one method
    if (application.getName() == null || application.getAddress() == null) {
        return AccountOpeningResult.incomplete();
    }
    
    if (application.getDocuments() == null || application.getDocuments().isEmpty()) {
        return AccountOpeningResult.missingDocuments();
    }
    
    // More validation...
    
    // Account creation logic
    Account account = new Account();
    account.setType(application.getAccountType());
    account.setCustomerId(application.getCustomerId());
    accountRepository.save(account);
    
    return AccountOpeningResult.success(account);
}
Review Questions:

Does this method do exactly one thing?
Have I separated conditional checks into their own methods?
Could I extract any part of this method into a more focused method?

14. Value Objects
Guideline: Use specialized value objects for domain concepts like Email, PhoneNumber, and Address to encapsulate validation and behavior.
Good Example:
public class Email {
    private final String value;
    
    public Email(String email) {
        if (!isValid(email)) {
            throw new InvalidEmailException(email);
        }
        this.value = email;
    }
    
    private boolean isValid(String email) {
        // Email validation logic
        return email != null && 
               email.matches("^[A-Za-z0-9+_.-]+@(.+)$");
    }
    
    @Override
    public String toString() {
        return value;
    }
}
Bad Example:
public class Customer {
    private String email; // Just a string, no validation
    
    public void setEmail(String email) {
        this.email = email; // No validation
    }
}
Review Questions:

Can this attribute be represented as a value object?
Does this concept have its own validation rules?
Would a dedicated class improve encapsulation and reusability?

15. DTO Pattern
Guideline: Use Data Transfer Objects (DTOs) to move data between layers. Never expose domain entities directly to the presentation layer.
Good Example:
// DTO for API responses
public class AccountDTO {
    private String id;
    private String accountNumber;
    private String type;
    private BigDecimal balance;
    
    // Getters only, no setters
}

// Domain entity with business logic
public class Account {
    private AccountId id;
    private AccountNumber accountNumber;
    private AccountType type;
    private Money balance;
    
    public void deposit(Money amount) {
        // Business logic for deposits
    }
    
    public void withdraw(Money amount) {
        // Business logic including validations
    }
    
    // Method to convert to DTO
    public AccountDTO toDTO() {
        AccountDTO dto = new AccountDTO();
        dto.setId(this.id.toString());
        dto.setAccountNumber(this.accountNumber.toString());
        dto.setType(this.type.getCode());
        dto.setBalance(this.balance.getAmount());
        return dto;
    }
}
Bad Example:
// Domain entity directly exposed to API
public class Account {
    private String id;
    private String accountNumber;
    private String type;
    private BigDecimal balance;
    
    // Getters and setters for all fields
    
    // Domain logic mixed with data
    public void deposit(BigDecimal amount) {
        this.balance = this.balance.add(amount);
    }
}
Review Questions:

Am I exposing domain entities directly to other layers?
Do my DTOs include only the necessary data for the specific use case?
Is there clear mapping between entities and DTOs?

16. Error Handling
Guideline: Use specific exception types and provide meaningful error messages. Handle exceptions at appropriate boundaries.
Good Example:
public class AccountService {
    public Account createAccount(AccountRequest request) {
        try {
            Customer customer = findCustomer(request.getCustomerId());
            AccountType accountType = findAccountType(request.getTypeCode());
            
            return accountRepository.save(
                new Account(customer, accountType, request.getInitialDeposit())
            );
        } catch (CustomerNotFoundException e) {
            throw new AccountCreationException(
                "Cannot create account: Customer not found", e);
        } catch (AccountTypeNotFoundException e) {
            throw new AccountCreationException(
                "Cannot create account: Invalid account type", e);
        } catch (InsufficientFundsException e) {
            throw new AccountCreationException(
                "Cannot create account: Initial deposit below minimum balance", e);
        }
    }
    
    private Customer findCustomer(String customerId) {
        return customerRepository.findById(customerId)
            .orElseThrow(() -> new CustomerNotFoundException(
                "Customer not found: " + customerId));
    }
    
    private AccountType findAccountType(String typeCode) {
        return accountTypeRepository.findByCode(typeCode)
            .orElseThrow(() -> new AccountTypeNotFoundException(
                "Unknown account type: " + typeCode));
    }
}
Bad Example:
public class AccountService {
    public Account createAccount(AccountRequest request) {
        // Generic exception with unhelpful message
        if (request.getCustomerId() == null) {
            throw new RuntimeException("Error creating account");
        }
        
        Customer customer = customerRepository.findById(request.getCustomerId());
        if (customer == null) {
            // No specific exception type
            throw new Exception("Error");
        }
        
        // More error-prone code...
    }
}
Review Questions:

Do I use specific exception types for different error scenarios?
Do my error messages provide helpful information about what went wrong?
Am I handling exceptions at the appropriate layer?


1. Naming as Communication
Guideline: Names should precisely communicate intent and purpose. Clear, descriptive names eliminate confusion and serve as documentation.
Good Example:
public class Customer {
    private final BigDecimal creditLimit;
    private final String accountNumber;
    private final AccountType accountType;
    private final BigDecimal availableBalance;
}
Bad Example:
public class Cust {
    private final BigDecimal limit;  // Credit limit or withdrawal limit?
    private final String accNum;  // Shortened unnecessarily
    private final int t;  // Completely ambiguous (type? tier? timestamp?)
    private final BigDecimal bal;  // Unclear - balance?
}
Review Questions:

Would another developer immediately understand what this name represents?
Does the name fully describe its purpose without requiring additional context?
If someone looked only at the variable name, would they know exactly what it contains?

2. Prioritize Clarity Over Brevity
Guideline: Choose longer, descriptive names over short, ambiguous ones, especially for domain-specific concepts. Technical abbreviations are acceptable only if universally understood.
Good Example:
public class TransactionProcessor {
    private final int maximumRetryAttempts = 3;
    private final CustomerVerificationService customerVerificationService;
    private final TransactionAuthorizationStrategy authorizationStrategy;
}
Bad Example:
public class TxProc {
    private final int maxRetry = 3;
    private final CustVerSvc cvs;
    private final TxAuthStrat strat;
}
Review Questions:

Have I chosen clarity over brevity?
Would a new team member understand these names without explanation?
Are any abbreviations likely to cause confusion?

3. Domain-Specific Terminology
Guideline: For industry-specific abbreviations or terms, provide clear JavaDoc documentation explaining their meaning. Such terms should still be descriptive within their domain context.
Good Example:
/**
 * Customer verification status according to Know Your Customer (KYC) regulations.
 * Represents the level of identity verification completed for this customer.
 * 
 * Possible values:
 * 0 - Not verified
 * 1 - Basic verification (ID submitted)
 * 2 - Enhanced verification (ID verified)
 * 3 - Full verification (ID and address verified)
 */
private int kycStatus;

/**
 * Indian Financial System Code (IFSC) - unique 11-character code that identifies
 * the bank branch within the Indian banking system for funds transfer.
 * Format: First 4 characters represent bank, 5th is 0, and last 6 represent branch.
 */
private String ifscCode;
Bad Example:
// No explanation of what KYC means or what the values represent
private int KYC;

// No explanation of what IFSC is or its format requirements
private String IFSC;
Review Questions:

Have I documented all domain-specific terminology?
Would someone outside my immediate team understand what these terms mean?
Does the documentation explain not just what something is, but why it matters?

4. Effective JavaDoc Documentation
Guideline: JavaDoc should explain the business logic, purpose, and constraints – not just restate what the code does. Focus on documenting the "why" behind the code rather than the "how."
Good Example:
/**
 * Calculates the maximum loan amount a customer is eligible for based on:
 * - Credit score (higher scores allow larger loans)
 * - Income verification (verified income increases eligibility)
 * - Existing debt obligations (reduces eligibility)
 * - Bank relationship history (longer relationships increase eligibility)
 * 
 * This implements the bank's risk assessment policy updated on 2024-01-15,
 * which complies with Federal Regulation Z requirements.
 * 
 * @param customer The customer requesting the loan
 * @param requestedAmount The amount requested by the customer
 * @return The maximum approved loan amount, which may be less than requested
 * @throws InsufficientCreditScoreException if credit score is below minimum threshold
 */
public BigDecimal calculateLoanEligibility(Customer customer, BigDecimal requestedAmount) {
    // Implementation
}
Bad Example:
/**
 * Calculates loan eligibility.
 * 
 * @param customer The customer
 * @param requestedAmount The amount requested
 * @return The approved amount
 */
public BigDecimal calculateLoanEligibility(Customer customer, BigDecimal requestedAmount) {
    // Implementation
}
Review Questions:

Does my JavaDoc explain why this code exists, not just what it does?
Have I included business context, rules, or policies that informed this implementation?
Would another developer understand the purpose without reading the implementation?
Have I documented edge cases, exceptions, and special handling?

5. Enums for Fixed Value Sets
Guideline: Use enums for representing fixed sets of values. Enums improve type safety, readability, and prevent invalid values from entering the system.
Good Example:
public enum AccountType {
    SAVINGS("Savings Account", new BigDecimal("0.00"), true),
    CHECKING("Checking Account", new BigDecimal("500.00"), true),
    FIXED_DEPOSIT("Fixed Deposit", new BigDecimal("1000.00"), false),
    LOAN("Loan Account", BigDecimal.ZERO, false);
    
    private final String displayName;
    private final BigDecimal minimumBalance;
    private final boolean allowsWithdrawals;
    
    AccountType(String displayName, BigDecimal minimumBalance, boolean allowsWithdrawals) {
        this.displayName = displayName;
        this.minimumBalance = minimumBalance;
        this.allowsWithdrawals = allowsWithdrawals;
    }
    
    public String getDisplayName() {
        return displayName;
    }
    
    public BigDecimal getMinimumBalance() {
        return minimumBalance;
    }
    
    public boolean allowsWithdrawals() {
        return allowsWithdrawals;
    }
}
Bad Example:
public class AccountConstants {
    public static final String TYPE_SAVINGS = "SAVINGS";
    public static final String TYPE_CHECKING = "CHECKING";
    public static final String TYPE_FIXED_DEPOSIT = "FIXED_DEPOSIT";
    public static final String TYPE_LOAN = "LOAN";
}

public class Account {
    private String accountType; // Can be any string, not validated
    
    public void setAccountType(String accountType) {
        this.accountType = accountType; // No validation
    }
}
Review Questions:

Is this a fixed set of values that should be constrained?
Would an enum provide better type safety than strings or integers?
Could I add useful methods or properties to the enum to encapsulate related behavior?

6. External System Integration Constants
Guideline: For values that might change between environments or depend on external system configurations, use well-named constants with clear documentation of their purpose and source.
Good Example:
/**
 * Maximum number of authentication attempts before account lockout.
 * This value is synchronized with the bank's security policy and
 * may be adjusted based on threat level assessments.
 * 
 * Current value set per Security Policy v3.2, Section 4.1.
 */
private static final int MAXIMUM_AUTHENTICATION_ATTEMPTS = 5;

/**
 * Timeout in milliseconds for third-party credit check service calls.
 * Set to balance between user experience and allowing sufficient
 * time for the external service to respond during peak hours.
 */
private static final int CREDIT_CHECK_SERVICE_TIMEOUT_MS = 3000;
Bad Example:
// Undocumented magic number
private static final int MAX_ATTEMPTS = 5;

// No explanation for this specific value
private static final int TIMEOUT = 3000;
Review Questions:

Have I clearly documented the source and rationale for this constant?
Would another developer know when and why this value might need to change?
Is this constant named descriptively enough to indicate its purpose?

7. Consistent Naming Patterns
Guideline: Maintain consistent naming patterns throughout the codebase. Use the same terms for the same concepts across all classes and packages.
Good Example:
// Consistent pattern for retrieving objects
public Customer findCustomerById(String customerId);
public Account findAccountById(String accountId);
public Transaction findTransactionById(String transactionId);

// Consistent pattern for validation methods
public boolean isValidCustomerId(String customerId);
public boolean isValidAccountNumber(String accountNumber);
public boolean isValidTransactionReference(String reference);
Bad Example:
// Inconsistent naming patterns
public Customer getCustomer(String customerId);
public Account retrieveAccountById(String accountId);
public Transaction findTransaction(String id);

// Inconsistent validation naming
public boolean validateCustomerId(String customerId);
public boolean isAccountNumberCorrect(String accountNumber);
public boolean checkTransactionReference(String reference);
Review Questions:

Do I use consistent terminology across the codebase?
Have I followed established naming patterns for similar operations?
Would the naming patterns help developers predict method names correctly?

8. Contextual Naming
Guideline: Names should make sense in their context. Avoid redundant information that's already implied by the class or method name.
Good Example:
public class Customer {
    private String id;
    private String name;
    private String email;
    
    public boolean hasValidEmail() {
        // Check if email is valid
    }
}

customerService.findByEmail(email);
Bad Example:
public class Customer {
    private String customerId; // "Customer" is redundant in this context
    private String customerName; // "Customer" is redundant
    private String customerEmail; // "Customer" is redundant
    
    public boolean isCustomerEmailValid() {
        // Redundant "Customer" in method name
    }
}

customerService.findCustomerByCustomerEmail(customerEmail);
Review Questions:

Does the name contain redundant information already provided by its context?
Is the name appropriate and clear within its specific context?
Have I avoided unnecessary repetition in names?

9. Boolean Naming Conventions
Guideline: Boolean variables and methods should be named to make their meaning clear in conditional statements. Use "is", "has", "can", or "should" prefixes for boolean methods and variables.
Good Example:
if (customer.isEligibleForLoan()) {
    // Process loan
}

if (account.hasOverdraftProtection()) {
    // Allow withdrawal
}

if (transaction.isComplete()) {
    // Send confirmation
}
Bad Example:
if (customer.loanEligibility()) {
    // Unclear if this returns a boolean or some eligibility value
}

if (account.overdraftProtection()) {
    // Ambiguous - is this checking status or enabling protection?
}

if (transaction.status()) {
    // Unclear what status value indicates "complete"
}
Review Questions:

Do boolean method names clearly indicate they return true/false?
Will the method name make sense when used in an if statement?
Does the name clearly convey what condition is being tested?

10. Method Naming Conventions
Guideline: Method names should begin with a verb that accurately describes the action being performed. The name should clearly communicate the method's purpose and effect.
Good Example:
public Customer findCustomerById(String id);
public void processPayment(Payment payment);
public boolean validateAccountNumber(String accountNumber);
public Account createSavingsAccount(Customer customer);
public void transferFunds(Account source, Account destination, BigDecimal amount);
Bad Example:
public Customer customerById(String id); // Missing verb
public void payment(Payment payment); // Missing verb
public boolean accountNumber(String accountNumber); // Purpose unclear
public Account savingsAccount(Customer customer); // Action unclear
public void funds(Account source, Account destination, BigDecimal amount); // Action unclear
Review Questions:

Does the method name start with a clear action verb?
Does the name accurately describe what the method does?
Is the purpose of the method immediately obvious from its name?