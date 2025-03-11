# The Philosophy of Programming
A profound approach to software development that treats programming as a philosophical discipline. Learn to embody the objects you create, establish proper authority boundaries, and write code that faithfully represents reality—elevating coding from syntax to digital philosophy.

# The Philosophy of Programming: A Deep Mindset for Java Development

## Table of Contents

### Part I: Foundations of Philosophical Programming
- Chapter 1: Introduction to Philosophical Programming
- Chapter 2: The Philosophy of Types and Identity
- Chapter 3: Objects as Living Entities

### Part II: Core Philosophical Principles
- Chapter 4: Class Impersonation
- Chapter 5: True Encapsulation and Authority
- Chapter 6: Semantic Type Selection
- Chapter 7: Immutable Core Identity
- Chapter 8: Domain-Driven Flexibility

### Part III: Language as Reality Creation
- Chapter 9: The Philosophy of Naming
- Chapter 10: Code as Storytelling
- Chapter 11: Method-Level Responsibility

### Part IV: Applied Philosophical Programming
- Chapter 12: SOLID Principles with Philosophical Depth
- Chapter 13: Deep JDK Understanding
- Chapter 14: Testing with Philosophical Focus

### Appendix: Applying Philosophy to a Movie Ticketing System
- A.1: Domain Model with Class Impersonation
- A.2: Philosophical System Architecture
- A.3: Implementation Guidelines
- A.4: Philosophical Testing Strategy

---

# Part I: Foundations of Philosophical Programming

## Chapter 1: Introduction to Philosophical Programming

### 1.1 Beyond Syntax and Patterns

Programming is often taught as a collection of syntax rules, design patterns, and technical best practices. While these are necessary components of a developer's toolkit, they represent only the surface level of software craftsmanship. Beneath these technical aspects lies a deeper philosophical realm that transforms coding from a mechanical activity into an art form that faithfully represents reality in digital form.

This philosophical approach to programming invites developers to think deeply about the essence of the entities they model, the relationships between them, and the fundamental nature of the digital world they create. It challenges the programmer to ask not just "How does this code work?" but "What does this code mean?" and "Does this model accurately reflect the reality it represents?"

### 1.2 The Philosophical Journey of a Java Developer

The path to mastery in Java programming—or any programming language—follows a progression through several distinct phases:

1. **Syntax Phase**: Learning language constructs, keywords, and basic operations
2. **Pattern Phase**: Applying common design patterns and architectural approaches
3. **Library Phase**: Leveraging existing frameworks and APIs to solve problems
4. **Philosophical Phase**: Understanding deep principles and semantic meaning
5. **Domain Modeling Phase**: Creating faithful digital representations of reality
6. **Wisdom Phase**: Knowing when to apply or bend rules based on context

Most programming education focuses heavily on the first three phases but often neglects the deeper philosophical dimensions. This book aims to illuminate these later phases, where true mastery emerges.

### 1.3 Programming as Digital Philosophy

When we program, we are not merely writing instructions for a computer; we are creating a digital representation of reality. Each class we define brings a new entity into existence in our digital universe. Each method we write establishes behaviors and capabilities of these entities. Each relationship we model creates connections between these digital beings.

In this sense, programming is a form of digital philosophy—a way of conceptualizing and representing the world in logical structures. The quality of our code is therefore not just measured by its efficiency or maintainability but by how truthfully it models the realities it aims to represent.

As philosopher Ludwig Wittgenstein observed, "The limits of my language mean the limits of my world." In programming, the names, types, and structures we choose define the limits and possibilities of our code's world. A thoughtful approach to these choices reflects a deep understanding of both the domain and the art of programming itself.

### 1.4 The Mindset Shift

Adopting a philosophical approach to programming requires a fundamental shift in mindset:

- From seeing classes as technical constructs to viewing them as digital entities with identity and purpose
- From treating methods as functions to regarding them as behaviors and capabilities
- From implementing interfaces as technical contracts to understanding them as defined roles and responsibilities
- From using types as data containers to employing them as semantic boundaries

This mindset shift transforms how we approach every aspect of software development, from initial design to testing and maintenance. It leads to code that is not just technically correct but conceptually coherent and semantically meaningful.

### 1.5 The Benefits of Philosophical Programming

Embracing a philosophical approach to programming yields numerous benefits:

1. **Deeper Domain Understanding**: By thinking deeply about the entities and relationships in your code, you develop a richer understanding of the domain you're modeling.

2. **More Intuitive APIs**: When classes behave in ways that align with their real-world counterparts, APIs become more intuitive and easier to use correctly.

3. **Fewer Bugs**: Many bugs arise from conceptual misalignments between code and reality. A philosophical approach reduces these misalignments.

4. **Better Maintainability**: Code that accurately reflects reality is easier to maintain because changes to the code can be guided by changes in the real-world domain.

5. **Enhanced Communication**: When code embodies real-world concepts faithfully, it becomes a shared language that bridges the gap between technical and non-technical stakeholders.

6. **Greater Developer Satisfaction**: There is a deep satisfaction in creating digital models that elegantly capture the essence of the realities they represent.

Throughout this book, we will explore the philosophical dimensions of programming and show how adopting this mindset can elevate your code from merely functional to truly meaningful.

## Chapter 2: The Philosophy of Types and Identity

### 2.1 Types as Conceptual Boundaries

In programming, types are often treated as mere technical constructs—ways to specify what kind of data a variable can hold or what operations can be performed on it. However, from a philosophical perspective, types represent much more: they establish conceptual boundaries that define what something is and is not.

When we declare `public class Movie`, we are not just creating a technical container for movie-related data; we are bringing into existence a concept of "Movie-ness" in our digital universe. We are declaring that there is a category of things called Movies that share certain characteristics and behaviors.

This perspective transforms type selection from a technical decision to a semantic one that enforces real-world constraints:

```java
// Technical approach - just data containers
public class MovieData {
    private String genre; // Any string allowed, even nonsensical ones
    // Other properties...
}

// Philosophical approach - semantic boundaries
public class Movie {
    private MovieGenre genre; // Only valid movie genres allowed
    // Other properties...
}

public enum MovieGenre {
    ACTION, COMEDY, DRAMA, HORROR, SCIENCE_FICTION, ROMANCE, 
    DOCUMENTARY, ANIMATION, THRILLER, FANTASY, MUSICAL, WESTERN
}
```

In the philosophical approach, we recognize that in the real world, movies have specific genres from a defined set, and our code enforces this reality through the type system.

### 2.2 The Essence of Identity

Identity is a profound philosophical concept that transcends programming but finds clear expression in object-oriented languages. What makes something what it is? What aspects of an entity can change while it remains fundamentally the same entity?

In object-oriented programming, we must consider what constitutes the essential identity of the entities we model:

```java
public final class Movie {
    private final UUID id;
    private final String title; // Part of core identity
    private final LocalDate releaseDate; // Part of core identity
    private String synopsis; // Not part of core identity - can change
    
    // No setters for identity attributes
    public void updateSynopsis(String newSynopsis) {
        this.synopsis = newSynopsis;
    }
}
```

Here, we recognize that a movie's title and release date are fundamental to its identity—a movie with a different title or release date would be a different movie. However, a movie's synopsis could be rewritten without changing what movie it is.

This careful consideration of what constitutes identity leads to more accurate models and more robust code.

### 2.3 Immutability and Identity Protection

Once we recognize what constitutes the core identity of an entity, a philosophical approach dictates that we protect that identity from unauthorized changes:

```java
public final class Person {
    private final String firstName; // Immutable - defines identity
    private final String lastName; // Immutable - defines identity
    private final LocalDate birthDate; // Immutable - defines identity
    private String email; // Mutable - not part of core identity
    
    // No setters for identity fields
    public void updateEmail(String newEmail) {
        // Validation logic
        this.email = newEmail;
    }
}
```

This approach recognizes that in the real world, a person's name and birth date are fundamental to who they are, while contact information may change without affecting identity.

### 2.4 Value Objects vs. Entities

The philosophical distinction between value objects and entities provides a powerful framework for modeling:

- **Entities** have identity that transcends their attributes. Two entities can have identical attributes but still be different entities.
- **Value Objects** are defined by their attributes. Two value objects with identical attributes are considered the same value.

```java
// Entity - has identity beyond its attributes
public class User {
    private final UUID id; // Distinct identity
    private String username;
    private String email;
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id.equals(user.id); // Equality based on identity
    }
}

// Value Object - is its attributes
public final class Money {
    private final BigDecimal amount;
    private final Currency currency;
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Money money = (Money) o;
        return amount.equals(money.amount) && 
               currency.equals(money.currency); // Equality based on attributes
    }
}
```

Understanding this distinction leads to clearer models where entities have stable identity and value objects are immutable.

### 2.5 Types as Domain Language

The types we define in our code become the vocabulary of our domain language. They shape how we think about and discuss the domain:

```java
// Poor domain vocabulary
public void process(String status, double amount) {
    // Implementation
}

// Rich domain vocabulary
public void processRefund(RefundStatus status, Money amount) {
    // Implementation
}
```

By defining domain-specific types rather than using primitive types or generic containers, we create a richer, more expressive domain language that more accurately reflects the conceptual model of the domain.

In the philosophical approach to programming, types are not just technical tools but conceptual constructs that shape our understanding of the domain and enforce semantic boundaries that respect real-world constraints.

## Chapter 3: Objects as Living Entities

### 3.1 From Passive Data to Active Agents

The traditional approach to object-oriented programming often treats objects as passive data containers with associated operations. This mindset leads to code where objects are manipulated by external systems rather than having agency of their own:

```java
// Traditional approach - objects as passive data
public class BookingService {
    public void createBooking(User user, ShowTime showTime, List<Seat> seats) {
        // Service manipulates passive objects
        Booking booking = new Booking();
        booking.setUser(user);
        booking.setShowTime(showTime);
        booking.setSeats(seats);
        booking.setStatus(BookingStatus.INITIATED);
        bookingRepository.save(booking);
    }
}
```

In the philosophical approach, objects are viewed as living entities with agency, responsibility, and behavior:

```java
// Philosophical approach - objects as active agents
public class BookingService {
    public Booking initiateBooking(User user, ShowTime showTime, List<Seat> seats) {
        // Objects have agency and behavior
        if (!showTime.areSeatsAvailable(seats)) {
            throw new SeatsUnavailableException(seats);
        }
        
        Booking booking = Booking.create(user, showTime, seats);
        bookingRepository.save(booking);
        return booking;
    }
}

public class Booking {
    // Fields...
    
    public static Booking create(User user, ShowTime showTime, List<Seat> seats) {
        // Booking creates itself with valid state
        Booking booking = new Booking(UUID.randomUUID(), user, showTime, seats);
        booking.status = BookingStatus.INITIATED;
        return booking;
    }
    
    public boolean confirm() {
        // Booking controls its own state transitions
        if (status != BookingStatus.PAYMENT_PENDING) {
            return false;
        }
        this.status = BookingStatus.CONFIRMED;
        return true;
    }
}
```

This shift from passive data to active agents transforms how we design and implement our systems. Objects become responsible for maintaining their own integrity, controlling their state transitions, and enforcing their business rules.

### 3.2 Object Autonomy and Authority

When we view objects as living entities, we must respect their autonomy and authority over their own state and behavior:

```java
// Disrespects object autonomy
public class SeatManager {
    public void markSeatAsBooked(Seat seat) {
        seat.status = SeatStatus.BOOKED; // Directly manipulates state
    }
}

// Respects object autonomy
public class SeatManager {
    public boolean requestSeatBooking(Seat seat) {
        return seat.book(); // Asks the seat to perform an action
    }
}

public class Seat {
    private SeatStatus status;
    
    public synchronized boolean book() {
        // Seat controls its own state transitions
        if (status != SeatStatus.AVAILABLE) {
            return false;
        }
        status = SeatStatus.BOOKED;
        return true;
    }
}
```

In the second approach, the Seat object has authority over its own state and enforces its own rules for state transitions. External systems must request changes rather than imposing them.

### 3.3 Message Passing, Not Method Calling

The philosophical view reframes method invocation as message passing between autonomous agents:

```java
// Traditional view: Method calling
bookingService.cancelBooking(booking);

// Philosophical view: Message passing
booking.requestCancellation();
```

This subtle shift changes how we design our interactions. Instead of services performing operations on passive objects, objects respond to messages according to their own logic and rules.

### 3.4 Objects as Domain Experts

In this approach, objects become experts in their own domain, encapsulating not just data but domain knowledge and business rules:

```java
public class Movie {
    private final Set<MovieGenre> genres;
    
    public boolean isOfGenre(MovieGenre genre) {
        return genres.contains(genre);
    }
    
    public boolean isSuitableForChildren() {
        // Movie knows what makes it suitable for children
        return !genres.contains(MovieGenre.HORROR) && 
               !genres.contains(MovieGenre.THRILLER);
    }
}
```

The Movie class doesn't just store genre information; it provides domain expertise about what those genres mean in terms of audience suitability.

### 3.5 Objects with Personality and Purpose

When we view objects as living entities, we can imbue them with personality and purpose that reflects their role in the domain:

```java
public class BookingConfirmation {
    private final Booking booking;
    
    public String generateConfirmationMessage() {
        // BookingConfirmation has a personality - it's enthusiastic and helpful
        return "Great news! Your booking for " + booking.getMovie().getTitle() + 
               " is confirmed. We look forward to seeing you on " + 
               booking.getShowTime().getFormattedDateTime() + "!";
    }
    
    public void sendTo(User user) {
        // BookingConfirmation knows its purpose - to inform and reassure
        notificationService.sendMessage(
            user.getPreferredContactMethod(),
            "Your movie booking is confirmed!",
            generateConfirmationMessage()
        );
    }
}
```

This BookingConfirmation object has a clear purpose (to confirm bookings) and a distinct personality (enthusiastic and helpful) that shapes how it fulfills that purpose.

By viewing objects as living entities with autonomy, authority, and personality, we create systems that more naturally model the real-world domains they represent, leading to code that is more intuitive, maintainable, and conceptually coherent.

# Part II: Core Philosophical Principles

## Chapter 4: Class Impersonation

### 4.1 The Essence of Impersonation

Class impersonation is a transformative mental technique that lies at the heart of philosophical programming. It involves mentally stepping into the role of the class you're designing and seeing the world from its perspective. This is not merely an anthropomorphic thought experiment but a rigorous approach to understanding the essential nature of the entities in your domain.

When you impersonate a class, you ask fundamental questions from its perspective:

- "Who am I and what defines my identity?"
- "What responsibilities do I have in this domain?"
- "Who has the authority to change my state?"
- "What relationships are essential to my existence?"

This shift in perspective transforms programming from a technical exercise into an act of empathetic modeling, where you genuinely embody the digital entities you create.

### 4.2 Ask as the Entity

The core practice of class impersonation involves framing questions from the entity's perspective:

- *As a Movie*, would I allow someone to change my title after I'm created?
- *As a Person*, who has the right to know my private information?
- *As a Theatre*, how do I relate to my Screens? Do I own them or merely reference them?

This mental shift leads to different design decisions than you might make when thinking purely in technical terms:

```java
// Before impersonation thinking
public class Movie {
    private String title;
    
    public void setTitle(String title) {
        this.title = title;
    }
}

// After impersonation thinking
public final class Movie {
    private final String title; // Immutable - part of core identity
    
    // No setter for title - "As a Movie, my title defines who I am"
}
```

Through impersonation, you realize that a movie's title is fundamental to its identity; changing the title would make it a different movie, so the title should be immutable.

### 4.3 Authority Boundaries Through Impersonation

When you impersonate a class, you naturally think about authority boundaries—who should be allowed to perform what actions on your state:

```java
public class Person {
    private final BigDecimal salary; // Private information
    
    // Restricted access based on authority
    public BigDecimal getSalaryForTaxAuthority(TaxAuthority authority) {
        if (authority.hasJurisdictionOver(this)) {
            return this.salary;
        }
        throw new UnauthorizedAccessException("You have no jurisdiction over me");
    }
    
    // Different authority, different access
    public BigDecimal getSalaryForEmployer(Employer employer) {
        if (this.isEmployedBy(employer)) {
            return this.salary;
        }
        throw new UnauthorizedAccessException("You are not my employer");
    }
    
    // No general public access
    // No public getSalary() method
}
```

By impersonating a Person, you realize that salary information should only be accessible to specific authorities (tax authorities, employers) but not to the general public, just as in real life.

### 4.4 Relationships Through Impersonation

Impersonation also clarifies the essential nature of relationships between entities:

```java
// Before impersonation thinking
public class Theatre {
    private List<Screen> screens;
    
    public void addScreen(Screen screen) {
        screens.add(screen);
    }
    
    public void removeScreen(Screen screen) {
        screens.remove(screen);
    }
}

// After impersonation thinking
public final class Theatre {
    private final Set<Screen> screens; // Immutable collection
    
    public Theatre(String name, Address location, Set<Screen> screens) {
        // Theatre is created with all its screens - "As a Theatre, my screens define part of my identity"
        this.screens = Collections.unmodifiableSet(new HashSet<>(screens));
    }
    
    // No methods to add or remove screens - "As a Theatre, my physical structure doesn't change frequently"
}
```

Through impersonation, you realize that a theatre's screens are part of its physical structure and identity, not something that changes frequently, so the relationship should be modeled as immutable.

### 4.5 Documentation Through Impersonation

The impersonation mindset can even transform how you document your code:

```java
/**
 * Represents a Movie in the cinema system.
 * 
 * As a Movie, my identity consists of my title, release date, and duration.
 * These attributes are immutable because they define what movie I am.
 * 
 * As a Movie, I own my cast and crew lists. These collections are part of
 * what makes me the specific movie that I am, though they may be amended
 * with additional information over time.
 * 
 * As a Movie, I know my genres and can answer questions about my content
 * and audience suitability.
 */
public final class Movie {
    // Implementation...
}
```

This style of documentation clarifies not just what the class does but why it's designed the way it is, capturing the philosophical reasoning behind the implementation.

### 4.6 Impersonation in Practice

To apply class impersonation in your development process:

1. **Begin with Identity**: When creating a new class, start by asking "Who am I?" and identify the core attributes that define this entity's identity.

2. **Define Responsibilities**: Ask "What am I responsible for in this domain?" to determine what methods the class should have.

3. **Establish Authority**: Ask "Who has the right to change my state?" to determine access control and setter methods.

4. **Map Relationships**: Ask "How do I relate to other entities?" to establish associations, compositions, and aggregations.

5. **Set Boundaries**: Ask "What changes would make me a different entity?" to determine what should be immutable.

Class impersonation isn't just a design technique; it's a fundamental shift in how you approach object-oriented programming, transforming it from a technical activity into an exercise in digital empathy and philosophical modeling.

## Chapter 5: True Encapsulation and Authority

### 5.1 Beyond Getters and Setters

Traditional object-oriented programming often reduces encapsulation to a simple formula: make fields private and provide public getters and setters. This mechanical approach misses the deeper philosophical meaning of encapsulation as a tool for enforcing authority boundaries and information hiding.

Think about your own personal information in the real world. Would you share your salary details with anyone who asks? Of course not. You might share it with tax authorities because they have a legitimate right to know. You might share it with your spouse or financial advisor out of trust and mutual benefit. But you would likely refuse if a random acquaintance or stranger asked about your income. You instinctively practice information hiding and selective disclosure based on established authority patterns.

True encapsulation in programming mirrors this real-world behavior. It goes beyond syntactic privacy to embrace the principle that an object should have authority over its own state and should share information selectively based on real-world authority patterns. Just as you wouldn't put your salary on a public billboard while also refusing to disclose it to the tax authority, our objects shouldn't expose sensitive data to all callers while simultaneously failing to provide it to legitimately authorized entities:

```java
// Conventional encapsulation - mechanical privacy
public class Customer {
    private String name;
    private String taxId;
    private CreditScore creditScore;
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getTaxId() { return taxId; }
    public void setTaxId(String taxId) { this.taxId = taxId; }
    public CreditScore getCreditScore() { return creditScore; }
    public void setCreditScore(CreditScore creditScore) { this.creditScore = creditScore; }
}

// True encapsulation - authority-based access control
public class Customer {
    private final String name; // Identity - immutable
    private final String taxId; // Sensitive - restricted access
    private CreditScore creditScore; // Controlled by authorized parties
    
    // Identity is accessible to all
    public String getName() { return name; }
    
    // Tax ID only accessible to tax authorities
    public String getTaxIdForAuthority(TaxAuthority authority) {
        if (authority.isLegitimate()) {
            return taxId;
        }
        throw new UnauthorizedAccessException("Not a legitimate tax authority");
    }
    
    // Credit score only accessible to financial institutions with consent
    public CreditScore getCreditScoreForInstitution(FinancialInstitution institution) {
        if (hasConsentedTo(institution)) {
            return creditScore;
        }
        throw new UnauthorizedAccessException("No consent given to this institution");
    }
    
    // Only credit bureaus can update credit score
    public void updateCreditScore(CreditScore newScore, CreditBureau bureau) {
        if (bureau.isRecognized()) {
            this.creditScore = newScore;
        } else {
            throw new UnauthorizedAccessException("Not a recognized credit bureau");
        }
    }
}
```

In the second example, the Customer class enforces authority boundaries that reflect real-world rules about who can access or modify different types of information.

### 5.2 Selective Information Disclosure

True encapsulation recognizes that not all information should be equally accessible to all parties:

```java
public class Medical Record {
    private final Patient patient;
    private final Doctor attendingPhysician;
    private final List<Diagnosis> diagnoses;
    private final List<Prescription> prescriptions;
    private final List<LabResult> labResults;
    
    // Patient can see basic information
    public MedicalSummary getSummaryForPatient() {
        return new MedicalSummary(diagnoses, prescriptions);
    }
    
    // Attending physician can see everything
    public CompleteMedicalRecord getRecordForPhysician(Doctor requestingPhysician) {
        if (requestingPhysician.equals(attendingPhysician) || patient.hasAuthorized(requestingPhysician)) {
            return new CompleteMedicalRecord(diagnoses, prescriptions, labResults);
        }
        throw new UnauthorizedAccessException("Physician not authorized to view this record");
    }
    
    // Insurance companies can see billing-relevant information
    public BillingRecord getRecordForInsurance(InsuranceProvider provider) {
        if (patient.getInsuranceProvider().equals(provider)) {
            return new BillingRecord(diagnoses, prescriptions);
        }
        throw new UnauthorizedAccessException("Not the patient's insurance provider");
    }
}
```

This Medical Record class provides different views of its information to different parties based on their authority and need-to-know in the real world.

### 5.3 Contextual Access Control

True encapsulation implements access control that varies based on the context and the relationship between entities:

```java
public class BankAccount {
    private final Customer owner;
    private final AccountNumber accountNumber;
    private Money balance;
    private List<Transaction> transactions;
    
    // Owner can see everything
    public AccountDetails getDetailsForOwner(Customer requestingCustomer) {
        if (requestingCustomer.equals(owner)) {
            return new AccountDetails(accountNumber, balance, transactions);
        }
        throw new UnauthorizedAccessException("Not the account owner");
    }
    
    // Bank staff can see details for legitimate purposes
    public AccountDetails getDetailsForBankStaff(BankEmployee employee, AccessPurpose purpose) {
        if (employee.hasAccessLevel(AccessLevel.CUSTOMER_ACCOUNTS) && purpose.isLegitimate()) {
            return new AccountDetails(accountNumber, balance, transactions);
        }
        throw new UnauthorizedAccessException("Unauthorized access attempt");
    }
    
    // Regulatory authorities can audit
    public AuditRecord getAuditRecordForRegulator(RegulatoryAuthority authority, AuditRequest request) {
        if (authority.isRecognized() && request.isValid()) {
            return new AuditRecord(accountNumber, transactions);
        }
        throw new UnauthorizedAccessException("Invalid audit request");
    }
}
```

This approach recognizes that in the real world, access to bank account information depends on who is asking and why.

### 5.4 Authority-Based Mutations

True encapsulation controls not just who can see information but who can change it:

```java
public class Employee {
    private final String name; // Immutable identity
    private Department department; // Can change
    private Money salary; // Sensitive - restricted changes
    
    // Department changes require manager approval
    public void changeDepartment(Department newDepartment, Manager approver) {
        if (approver.canManage(this) || approver.manages(newDepartment)) {
            this.department = newDepartment;
        } else {
            throw new UnauthorizedOperationException("Manager not authorized to make this change");
        }
    }
    
    // Salary changes require HR and management approval
    public void adjustSalary(Money newSalary, HRRepresentative hr, Manager manager) {
        if (hr.isAuthorizedForCompensation() && manager.canManage(this)) {
            this.salary = newSalary;
        } else {
            throw new UnauthorizedOperationException("Insufficient authority for salary adjustment");
        }
    }
}
```

This Employee class enforces rules about who has the authority to make different types of changes to an employee's record.

### 5.5 Designing with Authority in Mind

To implement true encapsulation based on authority:

1. **Identify Information Categories**: Classify the information in your domain based on sensitivity and access patterns
   
2. **Map Authority Patterns**: Identify who has authority over what information in the real world
   
3. **Design Access Methods**: Create contextual access methods that enforce these authority patterns
   
4. **Implement Verification**: Add logic to verify the authority of requestors
   
5. **Create Appropriate Views**: Return different views of the data based on the requestor's authority

This approach leads to systems that more accurately reflect real-world authority boundaries and information access patterns, resulting in more secure, intuitive, and maintainable code.

## Chapter 6: Semantic Type Selection

### 6.1 Types as Semantic Constructs

In traditional programming, type selection is often driven by technical considerations: storage efficiency, performance, or convenience. The philosophical approach recognizes that type selection is fundamentally a semantic decision that should reflect the meaning of the data, not just its technical representation.

```java
// Technical type selection
public class Movie {
    private String genre; // Just a string
    private int durationMinutes; // Just a number
    private String rating; // Just a string
}

// Semantic type selection
public class Movie {
    private MovieGenre genre; // A defined category with meaning
    private Duration duration; // A time concept, not just a number
    private Rating rating; // A structured concept with validation rules
}
```

Semantic type selection constrains values to their conceptual boundaries, preventing nonsensical states and making the code more self-documenting.

### 6.2 Enums for Closed Categories

One of the most powerful applications of semantic type selection is using enums for values that come from a closed set of possibilities.

Consider how libraries organize books in the real world. Books aren't shelved randomly—they're categorized into specific genres or sections. A librarian wouldn't accept "underwater basket-weaving" as a valid book genre because it doesn't exist in their established classification system. The set of possible book genres is finite and predefined.

In programming, when we use strings to represent such categories, we're essentially allowing any arbitrary text as a genre—including nonsensical values like "XYZABC" or "NotARealGenre." This is like allowing books to be placed in non-existent sections of the library, creating chaos and confusion.

Enums solve this problem by defining the exact set of valid possibilities:

```java
// Poor semantic clarity
public class Book {
    private String genre; // Any string is accepted
    
    public void setGenre(String genre) {
        this.genre = genre; // No validation against actual book genres
    }
}

// Strong semantic clarity
public class Book {
    private BookGenre genre; // Only valid genres accepted
    
    public void setGenre(BookGenre genre) {
        this.genre = Objects.requireNonNull(genre, "Genre must be specified");
    }
}

public enum BookGenre {
    FICTION_ADVENTURE,
    FICTION_CONTEMPORARY,
    FICTION_HISTORICAL,
    FICTION_MYSTERY,
    FICTION_SCIENCE_FICTION,
    NON_FICTION_BIOGRAPHY,
    NON_FICTION_HISTORY,
    NON_FICTION_SCIENCE,
    NON_FICTION_SELF_HELP
}
```

Using enums for closed categories creates a type-safe way to represent domain concepts, preventing invalid values and making code more robust. Just as a physical library has a defined organizational system, our code enforces a defined set of categories that reflect real-world constraints. This not only prevents errors but also makes the code more self-documenting and intuitive to domain experts.

### 6.3 Domain-Specific Types

Beyond enums, creating custom types for domain concepts is another powerful application of semantic type selection. Consider how we handle money in everyday life. We don't just think of money as a number—we think of it as an amount in a specific currency. Five dollars is fundamentally different from five euros or five bitcoin, despite all being represented by the number 5.

```java
// Primitive obsession - using technical types
public class Product {
    private String name;
    private double price; // Just a number - is it dollars? euros? yen?
    
    public void applyDiscount(double percentage) {
        this.price = this.price * (1 - percentage/100); // Prone to errors
    }
}

// Domain-specific types
public class Product {
    private ProductName name; // Not just any string
    private Money price; // Amount with currency
    
    public void applyDiscount(Percentage percentage) {
        this.price = this.price.discountBy(percentage);
    }
}

public final class Money {
    private final BigDecimal amount;
    private final Currency currency;
    
    // Constructor with validation
    public Money(BigDecimal amount, Currency currency) {
        if (amount.compareTo(BigDecimal.ZERO) < 0) {
            throw new IllegalArgumentException("Amount cannot be negative");
        }
        this.amount = amount;
        this.currency = Objects.requireNonNull(currency);
    }
    
    public Money discountBy(Percentage percentage) {
        return new Money(
            amount.multiply(BigDecimal.ONE.subtract(percentage.asFraction())),
            currency
        );
    }
    
    // No setters - immutable value object
}
```

Creating domain-specific types like `Money` and `Percentage` makes the code more expressive and prevents common errors. With the `Money` class, we can't accidentally add dollars to euros or apply a discount of 200%, because the types enforce the conceptual rules of the domain.

### 6.4 Type Hierarchies as Domain Taxonomies

In nature, organisms are classified into taxonomies that reflect their relationships and shared characteristics. Similarly, type hierarchies in programming should reflect the taxonomical relationships of concepts in the domain.

Consider the classification of payment methods in a retail system:

```java
// Flat structure - misses the taxonomy
public class PaymentProcessor {
    public void processPayment(String paymentType, String accountNumber, double amount) {
        switch (paymentType) {
            case "CREDIT_CARD":
                // Process credit card
                break;
            case "DEBIT_CARD":
                // Process debit card
                break;
            case "BANK_TRANSFER":
                // Process bank transfer
                break;
            // And so on...
        }
    }
}

// Taxonomical structure - reflects domain relationships
public abstract class PaymentMethod {
    public abstract boolean processPayment(Money amount);
}

public abstract class CardPayment extends PaymentMethod {
    protected final CardNumber cardNumber;
    protected final ExpiryDate expiryDate;
    protected final SecurityCode securityCode;
    
    // Common card processing logic
}

public class CreditCardPayment extends CardPayment {
    private final CreditLimit creditLimit;
    
    @Override
    public boolean processPayment(Money amount) {
        // Credit card specific processing
    }
}

public class DebitCardPayment extends CardPayment {
    private final BankAccount linkedAccount;
    
    @Override
    public boolean processPayment(Money amount) {
        // Debit card specific processing
    }
}

public class BankTransferPayment extends PaymentMethod {
    private final BankAccount fromAccount;
    private final BankAccount toAccount;
    
    @Override
    public boolean processPayment(Money amount) {
        // Bank transfer specific processing
    }
}
```

In this taxonomical approach, the type hierarchy reflects the conceptual relationships in the domain. Credit cards and debit cards share characteristics as card payments, while bank transfers represent a different branch of the payment method taxonomy. This approach makes the code more intuitive to domain experts and more maintainable as the domain evolves.

### 6.5 Avoiding Primitive Obsession

One of the most common anti-patterns in programming is "primitive obsession"—the overuse of primitive types like strings, integers, and booleans instead of creating domain-specific types. This leads to code that is less expressive and more error-prone.

Consider user registration in a system:

```java
// Primitive obsession - using basic types for domain concepts
public class UserRegistration {
    public User registerUser(String email, String password, int age, String country) {
        // Validation logic scattered throughout the method
        if (!email.contains("@")) {
            throw new IllegalArgumentException("Invalid email format");
        }
        if (password.length() < 8) {
            throw new IllegalArgumentException("Password too short");
        }
        if (age < 18) {
            throw new IllegalArgumentException("Must be 18 or older");
        }
        // More validation...
        
        return new User(email, password, age, country);
    }
}

// Domain-specific types
public class UserRegistration {
    public User registerUser(EmailAddress email, Password password, Age age, Country country) {
        // Validation already handled by the types
        return new User(email, password, age, country);
    }
}

public final class EmailAddress {
    private final String value;
    
    public EmailAddress(String value) {
        if (!isValidEmail(value)) {
            throw new InvalidEmailException(value);
        }
        this.value = value;
    }
    
    private boolean isValidEmail(String email) {
        // Email validation logic
        return email != null && email.contains("@");
    }
    
    // No setters - immutable value object
}

public final class Password {
    private final String hashedValue;
    
    public Password(String plaintext) {
        if (plaintext.length() < 8) {
            throw new WeakPasswordException("Password too short");
        }
        this.hashedValue = hashPassword(plaintext);
    }
    
    private String hashPassword(String plaintext) {
        // Password hashing logic
        return "hashed_" + plaintext; // Simplified for example
    }
    
    // No setters - immutable value object
}
```

By creating domain-specific types for concepts like EmailAddress and Password, we encapsulate the validation and behavior associated with these concepts. This makes the code more expressive, centralizes validation logic, and prevents errors by enforcing domain rules at the type level.

In everyday life, we don't think of an email address as just a string of characters—we understand it has a specific format and purpose. Similarly, in our code, creating a dedicated EmailAddress type reflects this richer understanding of the concept.

### 6.6 Types as Documentation

Well-chosen types serve as built-in documentation about the domain. They communicate the concepts, constraints, and relationships of the domain to developers without requiring extensive comments or external documentation.

```java
// Types as documentation
public class FlightBookingService {
    public BoardingPass bookFlight(
        Passenger passenger, 
        Flight flight, 
        SeatClass seatClass, 
        PaymentMethod paymentMethod
    ) {
        // Implementation
    }
}
```

Without a single comment, this method signature communicates volumes about the domain. We understand that:

1. A passenger books a specific flight
2. They select a seat class (e.g., economy, business)
3. They pay using a payment method
4. They receive a boarding pass as a result

The carefully chosen domain-specific types make the code self-documenting and align it with the conceptual model of the domain.

In contrast, a method using primitive types would obscure these domain concepts:

```java
// Obscured domain concepts
public class FlightBookingService {
    public String bookFlight(
        String passengerDetails, 
        String flightNumber, 
        int classCode, 
        String paymentInfo
    ) {
        // Implementation
    }
}
```

Here, the domain concepts are buried in technical types, making the code harder to understand and more detached from the domain model.

Semantic type selection is about creating a type system that accurately reflects the concepts, constraints, and relationships of the domain. By choosing types that align with the domain model, we create code that is more expressive, more robust, and more closely connected to the real-world domain it represents.

## Chapter 7: Immutable Core Identity

### 7.1 The Philosophy of Identity and Change

In both philosophy and programming, identity is a profound concept. What makes an entity what it is? What aspects can change while the entity remains fundamentally the same?

Consider your own identity as a person. Your name is central to who you are—if someone tried to "update" your name to something else, they wouldn't be changing a property of you; they would be attempting to make you a different person. Similarly, your date of birth is immutable—it's a historical fact that cannot be changed without creating a fictional alternate reality.

In contrast, your address, job title, or haircut can change without altering your fundamental identity. You remain the same person even as these attributes evolve.

This philosophical understanding of identity and change should guide how we model entities in our code:

```java
public final class Person {
    private final String firstName; // Immutable - defines identity
    private final String lastName; // Immutable - defines identity
    private final LocalDate dateOfBirth; // Immutable - historical fact
    private ContactInformation contactInfo; // Mutable - changes over time
    private EmploymentStatus employment; // Mutable - changes over time
    
    // Constructor with validation for identity attributes
    
    // No setters for identity attributes
    
    // Controlled methods to update non-identity attributes
    public void updateContactInformation(ContactInformation newContactInfo) {
        this.contactInfo = Objects.requireNonNull(newContactInfo);
    }
}
```

In this model, attributes that define the person's core identity (name, birth date) are immutable, while attributes that can change over time (contact information, employment) have controlled update methods.

### 7.2 Identifying Core Identity Attributes

How do we determine which attributes constitute an entity's core identity? Consider these guiding questions:

1. **Replacement Test**: If this attribute changed, would we consider it a different entity?
2. **Historical Fact Test**: Is this attribute a historical fact that cannot be changed without altering reality?
3. **Reference Test**: Do other entities refer to this entity based on this attribute?

Let's apply these tests to a Movie entity:

```java
public final class Movie {
    private final String title; // Core identity - passes replacement test
    private final LocalDate releaseDate; // Core identity - historical fact
    private final Set<Person> directors; // Core identity - key creative force
    private String synopsis; // Not core identity - can be revised
    private Rating criticRating; // Not core identity - subjective assessment
    
    // Constructor with validation for identity attributes
    
    // No setters for identity attributes
    
    // Controlled methods for non-identity attributes
    public void updateSynopsis(String newSynopsis) {
        this.synopsis = Objects.requireNonNull(newSynopsis);
    }
}
```

A movie's title, release date, and directors define its fundamental identity—changing any of these would make it a different movie. In contrast, its synopsis or critical rating can evolve without changing what movie it is.

In the real world, consider how we identify movies: "Titanic (1997)" uses both title and release date because there have been multiple movies named "Titanic." The identity needs both attributes to be unique and definitive.

### 7.3 Immutability Implementation Strategies

Once we've identified core identity attributes, we need to make them truly immutable. Java provides several mechanisms for this:

1. **Final Fields**: The most basic form of immutability
   ```java
   private final String title;
   ```

2. **Immutable Collections**: For collection attributes that define identity
   ```java
   private final Set<Person> directors;
   
   public Movie(String title, LocalDate releaseDate, Set<Person> directors) {
       this.title = title;
       this.releaseDate = releaseDate;
       // Create immutable copy of the collection
       this.directors = Collections.unmodifiableSet(new HashSet<>(directors));
   }
   ```

3. **Defensive Copying**: For returning collections without exposing internals
   ```java
   public Set<Person> getDirectors() {
       // Return a copy to prevent modification of the internal collection
       return new HashSet<>(directors);
   }
   ```

4. **Deep Immutability**: Ensuring contained objects are also immutable
   ```java
   public final class Address {
       private final String street;
       private final String city;
       private final String postalCode;
       private final Country country;
       
       // Constructor with validation
       
       // No setters - completely immutable
   }
   ```

These strategies ensure that once an entity is created, its core identity cannot be altered, maintaining the integrity of the domain model.

### 7.4 Identity vs. Equality

Immutable core identity has profound implications for how we implement equality in our classes. Two entities with identical attribute values might or might not be considered the same entity, depending on whether we're modeling an entity or a value object.

For entities with intrinsic identity:
```java
public class User {
    private final UUID id; // Intrinsic identity
    private String username; // Can change without affecting identity
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id.equals(user.id); // Equality based only on identity
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
```

For value objects with no separate identity:
```java
public final class Money {
    private final BigDecimal amount;
    private final Currency currency;
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Money money = (Money) o;
        return amount.equals(money.amount) && 
               currency.equals(money.currency); // Equality based on all attributes
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(amount, currency);
    }
}
```

This distinction reflects a deep philosophical understanding of identity versus equality. In the real world, two $10 bills are considered equivalent (value equality), but two people with the same name are still distinct individuals (entity identity).

### 7.5 Immutability and Time

Modeling time and change while maintaining immutable core identity presents interesting challenges. How do we represent an entity that evolves over time without changing its identity?

The Event Sourcing pattern offers one solution:
```java
public final class CustomerEvent {
    private final UUID customerId; // Link to the entity's identity
    private final LocalDateTime timestamp;
    private final CustomerEventType type;
    private final Map<String, Object> data;
    
    // Constructor with validation
    
    // Completely immutable - no setters
}

public class CustomerEventStream {
    private final UUID customerId;
    private final List<CustomerEvent> events = new ArrayList<>();
    
    public void addEvent(CustomerEventType type, Map<String, Object> data) {
        events.add(new CustomerEvent(customerId, LocalDateTime.now(), type, data));
    }
    
    public Customer reconstructCurrentState() {
        Customer customer = null;
        
        for (CustomerEvent event : events) {
            if (event.getType() == CustomerEventType.CREATED) {
                customer = createFromEvent(event);
            } else if (customer != null) {
                customer = applyEvent(customer, event);
            }
        }
        
        return customer;
    }
    
    // Helper methods to create and apply events
}
```

In this approach, the entity's state is reconstructed from an immutable stream of events. The entity's identity remains constant while its state evolves through additions to its event history.

This mirrors how we think about people and their lives—a person's identity remains constant while their life story accumulates experiences and changes.

### 7.6 Benefits of Immutable Core Identity

Implementing immutable core identity yields numerous benefits:

1. **Conceptual Clarity**: The code clearly distinguishes between what defines an entity and what are merely changeable attributes.

2. **Thread Safety**: Immutable objects are inherently thread-safe, eliminating a whole class of concurrency bugs.

3. **Defensive Programming**: Immutability prevents unexpected state changes, making the system more predictable and robust.

4. **Caching and Performance**: Immutable objects can be freely shared and cached without fear of side effects.

5. **Simplified Debugging**: When an object's core identity cannot change, it's easier to track and debug issues.

Immutable core identity is not just a technical practice but a philosophical approach that recognizes the profound distinction between what makes something what it is and what aspects of it can change over time.

## Chapter 8: Domain-Driven Flexibility

### 8.1 Balancing Rigidity and Flexibility

While the previous chapters have emphasized immutability and strong typing, some domains require flexibility. The challenge is to provide this flexibility while maintaining type safety and semantic clarity.

Think about how a restaurant menu works in the real world. There's a core menu with standard items, but many restaurants also offer customization options, daily specials, or seasonal variations. The menu needs enough structure to maintain the restaurant's identity but enough flexibility to adapt to changing ingredients, customer preferences, and creative inspirations.

In software, we face similar challenges—how to provide the right balance of structure and flexibility to accurately model domains that have both fixed and variable elements.

### 8.2 Type-Safe Extensibility

One approach to domain-driven flexibility is to create systems that allow type-safe extension:

```java
// Base type with fixed structure
public abstract class MenuItem {
    private final String name;
    private final Money basePrice;
    private final List<Allergen> allergens;
    
    // Constructor with validation
    
    // Abstract methods to be implemented by subtypes
    public abstract String getDescription();
    public abstract Money calculatePrice(List<Customization> customizations);
}

// Concrete implementations for different menu categories
public class EntreeItem extends MenuItem {
    private final List<Side> includedSides;
    
    @Override
    public String getDescription() {
        // Entree-specific description
    }
    
    @Override
    public Money calculatePrice(List<Customization> customizations) {
        // Entree-specific pricing logic
    }
}

public class BeverageItem extends MenuItem {
    private final boolean alcoholic;
    
    @Override
    public String getDescription() {
        // Beverage-specific description
    }
    
    @Override
    public Money calculatePrice(List<Customization> customizations) {
        // Beverage-specific pricing logic
    }
}

// Type-safe customization system
public interface Customization {
    Money getPriceAdjustment();
    boolean isApplicableTo(MenuItem item);
}

public class ExtraIngredient implements Customization {
    private final Ingredient ingredient;
    private final Money priceAdjustment;
    
    @Override
    public Money getPriceAdjustment() {
        return priceAdjustment;
    }
    
    @Override
    public boolean isApplicableTo(MenuItem item) {
        // Logic to determine if this extra ingredient is applicable
    }
}
```

This design provides a structured framework (MenuItem base class) while allowing specific variations (EntreeItem, BeverageItem) and customizations (Customization interface). It's both rigid in its core structure and flexible in its extensibility.

### 8.3 Domain Registries

For domains that need to define their own types at runtime, domain registries provide a powerful pattern:

```java
// Theatre-specific seat type system
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

// Usage example
public final class Theatre {
    private final String name;
    private final SeatTypeRegistry seatTypes;
    
    public Theatre(String name) {
        this.name = name;
        this.seatTypes = new SeatTypeRegistry();
        initializeDefaultSeatTypes();
    }
    
    private void initializeDefaultSeatTypes() {
        seatTypes.registerType("STD", "Standard", new BigDecimal("1.0"));
        seatTypes.registerType("PRM", "Premium", new BigDecimal("1.5"));
        seatTypes.registerType("VIP", "VIP", new BigDecimal("2.0"));
    }
    
    // Theatre-specific seat type
    public void addCustomSeatType(String code, String name, BigDecimal multiplier) {
        seatTypes.registerType(code, name, multiplier);
    }
}
```

This pattern allows each Theatre to define its own seat types while maintaining type safety and preventing invalid types from being used. It's similar to how different theater chains might have their own seating categories (IMAX, Dolby, Recliner) while maintaining the concept of what a "seat type" is.

### 8.4 Bounded Contexts

Some concepts have different meanings in different contexts. The term "Customer" might mean something different to the Sales department than to Shipping or Accounting. Domain-Driven Design addresses this through bounded contexts—explicitly defined boundaries within which a model has a specific, consistent meaning.

```java
// Sales bounded context
package com.example.sales;

public class Customer {
    private final UUID id;
    private final String name;
    private final SalesRepresentative assignedRep;
    private final List<Opportunity> opportunities;
    
    // Sales-specific customer behavior
    public void addOpportunity(Product product, BigDecimal estimatedValue) {
        opportunities.add(new Opportunity(this, product, estimatedValue));
    }
}

// Shipping bounded context
package com.example.shipping;

public class Customer {
    private final UUID id;
    private final String name;
    private final Address shippingAddress;
    private final List<ShippingPreference> preferences;
    
    // Shipping-specific customer behavior
    public DeliveryRoute calculateOptimalDeliveryRoute() {
        // Shipping-specific logic
    }
}
```

These are two entirely different Customer classes with different attributes and behaviors, reflecting the different meanings of "Customer" in different contexts. Rather than forcing a single, unwieldy Customer class that serves all purposes poorly, bounded contexts allow each part of the system to have its own tailored model.

This approach mirrors how the real world works. A person might be a "customer" to a store, a "patient" to a doctor, and a "passenger" to an airline—same individual, different context-specific roles and attributes.

### 8.5 Strategy Pattern for Domain Variations

For domains with algorithmic variations, the Strategy pattern provides flexibility while maintaining structure:

```java
// Core domain concept with varying implementations
public interface PricingStrategy {
    Money calculatePrice(Booking booking);
}

public class StandardPricingStrategy implements PricingStrategy {
    @Override
    public Money calculatePrice(Booking booking) {
        // Standard pricing algorithm
    }
}

public class PeakSeasonPricingStrategy implements PricingStrategy {
    @Override
    public Money calculatePrice(Booking booking) {
        // Peak season pricing algorithm
    }
}

public class PromotionalPricingStrategy implements PricingStrategy {
    private final Promotion promotion;
    
    @Override
    public Money calculatePrice(Booking booking) {
        // Apply promotion to standard price
    }
}

// Usage
public class BookingService {
    private final PricingStrategyFactory pricingStrategyFactory;
    
    public Money calculateBookingPrice(Booking booking) {
        PricingStrategy strategy = pricingStrategyFactory.getStrategyFor(booking);
        return strategy.calculatePrice(booking);
    }
}
```

This pattern allows the pricing algorithm to vary based on context (standard, peak season, promotional) while maintaining a consistent interface. It's similar to how a hotel might have different pricing strategies for different seasons or customer types, all within the same core pricing concept.

### 8.6 Event-Driven Extensibility

For systems that need to evolve and extend over time, event-driven architecture provides flexibility without compromising core structure:

```java
// Core domain event
public class BookingCreatedEvent {
    private final UUID bookingId;
    private final UUID customerId;
    private final LocalDateTime bookingTime;
    private final Money totalAmount;
    
    // Constructor and getters
}

// Event listeners can be added without modifying core domain
public class LoyaltyPointsCalculator implements EventListener<BookingCreatedEvent> {
    @Override
    public void onEvent(BookingCreatedEvent event) {
        // Award loyalty points for the booking
    }
}

public class MarketingCampaignTracker implements EventListener<BookingCreatedEvent> {
    @Override
    public void onEvent(BookingCreatedEvent event) {
        // Track conversion from marketing campaign
    }
}
```

This approach allows the system to be extended with new functionality (loyalty points, marketing tracking) without modifying the core booking process. It provides flexibility through loose coupling while maintaining the structural integrity of the core domain model.

In the real world, this is similar to how a purchase might trigger various downstream processes (inventory updates, customer analytics, shipping preparations) without changing the fundamental nature of what a "purchase" is.

Domain-driven flexibility is about finding the right balance between rigid structure and adaptable extension. By using patterns like type-safe extensibility, domain registries, bounded contexts, strategy patterns, and event-driven architecture, we can create systems that accurately reflect the domain's natural blend of fixed concepts and variable implementations.

# Part III: Language as Reality Creation

## Chapter 9: The Philosophy of Naming

### 9.1 Names Shape Reality

In programming, as in language more broadly, naming is not merely a labeling activity but an act of reality creation. The names we choose in code become the conceptual foundation upon which our understanding of the system is built.

Consider a simple thought experiment: Think about your reaction to these two declarations:

```java
public class Person {
    private String bankAddress;
}

public class Bank {
    private String address;
}
```

The first example creates immediate cognitive dissonance because people don't naturally have "bank addresses" as a characteristic. The second feels natural and intuitive. This isn't just about code clarity—it's about how names shape our perception of the entities we're modeling.

In everyday life, we understand that naming something appropriately helps us think about it correctly. A "recycling bin" encourages different behavior than a "trash can," even if they're physically identical containers. In programming, naming has an even more profound impact because the abstractions we name have no physical form—they exist primarily as concepts shaped by the names we give them.

### 9.2 The Ontological Dimension of Naming

When we create a class in code, we are performing an ontological act—we are declaring that this concept exists as a distinct entity in our domain. The name we choose affects how we understand the very nature of that entity.

Consider these alternative names for the same concept:

```java
public class User { /* ... */ }
public class Account { /* ... */ }
public class Person { /* ... */ }
```

These aren't just different labels; they suggest fundamentally different entities with different purposes, behaviors, and relationships. A "User" implies interaction with a system, an "Account" suggests a focus on authentication and authorization, while a "Person" emphasizes the human being behind the digital representation.

In the real world, how we name things influences how we treat them. The difference between calling someone a "customer" versus a "guest" affects how businesses interact with them. Similarly, in code, naming a class "CustomerRecord" versus "Guest" shapes how we design its behaviors and relationships.

### 9.3 Names as Mental Models

Names create mental models that guide our thinking about the system:

```java
// Creates one mental model
public void process(Data data) {
    // Implementation
}

// Creates an entirely different mental model
public void calculateMonthlyInterest(LoanAccount account) {
    // Implementation
}
```

The first method name gives us almost no information about what the method does or why we would call it. The second creates a clear mental model: it calculates the monthly interest for a loan account. This name not only tells us what the method does but implies its purpose in the larger system.

Consider how names create mental models in everyday life. When someone is introduced as a "doctor," we immediately form different expectations than if they were introduced as an "artist." These names activate entire conceptual frameworks that shape our interactions. In code, well-chosen names do the same thing, activating the right mental models to help developers understand the system.

### 9.4 Domain Alignment in Naming

Names should align with the ubiquitous language of the domain—the terms that domain experts use to discuss the domain:

```java
// Misaligned with domain language
public class MovieShow {
    private Film filmContent;
    private ScreenRoom venue;
    private TimeSlot period;
}

// Aligned with domain language
public class Screening {
    private Movie movie;
    private Theatre theatre;
    private ShowTime showTime;
}
```

The second example uses terms that match how people in the movie industry actually talk about these concepts. This alignment does more than make the code readable—it creates a shared language between developers and domain experts, facilitating deeper understanding of the domain.

In the real world, professionals in specialized fields develop precise terminology that captures important distinctions. Medical doctors don't say "heart tubes" when they mean "arteries" because the specific term conveys important meaning. Similarly, our code should use the domain's own terminology to capture the precise meanings that domain experts have developed.

### 9.5 Conceptual Integrity in Naming

Each name should represent exactly one concept, and that concept should be represented consistently throughout the codebase:

```java
// Inconsistent naming breaks conceptual integrity
public class Customer {
    // ...
}

public class ClientAccount {  // Is a Client different from a Customer?
    private Customer owner;
    // ...
}

public class PatronPreferences {  // Is a Patron different from a Customer or Client?
    // ...
}
```

This mixed terminology creates confusion. Are Customer, Client, and Patron three different concepts, or three names for the same concept? Inconsistent naming fragments our understanding of the domain.

In everyday language, we intuitively understand the importance of consistent terminology. Medical professionals don't alternate between "heart attack" and "myocardial infarction" in the same conversation without explanation, as this would create confusion. Our code should maintain the same consistency.

### 9.6 Names as Perspective Revelations

The right name reveals the appropriate perspective from which to view an entity:

```java
// One perspective
public interface UserAuthentication {
    boolean authenticate(String username, String password);
}

// A completely different perspective
public interface SecurityGateway {
    boolean verifyCredentials(String username, String password);
}
```

These interfaces might perform similar functions, but they position the component very differently in our mental model of the system. The first puts us in the perspective of managing users, while the second puts us in the perspective of enforcing security boundaries.

In the real world, perspective matters enormously. A building might be called a "school" by students, a "workplace" by teachers, and a "community resource" by local officials—each name highlighting the perspective from which it's viewed. Similarly, our code names should reveal the perspective that's most helpful for understanding each component's role in the system.

### 9.7 The Transformative Power of Renaming

Renaming is not merely a refactoring operation—it's a transformative act that can reveal design issues and opportunities:

```java
// Before renaming
public class OrderProcessor {
    private List<Order> orders;
    private Customer customer;
    private ShippingDetails shipping;
    private PaymentInfo payment;
    
    public void process() {
        // Complex mix of responsibilities
    }
}

// After thoughtful renaming
public class Checkout {
    private ShoppingCart cart;
    private Customer customer;
    private ShippingDetails shipping;
    private PaymentMethod paymentMethod;
    
    public Order createOrder() {
        // More focused responsibility
    }
}
```

The act of renaming from "OrderProcessor" to "Checkout" forced a reconsideration of the class's purpose and responsibilities. The new name suggests a different conceptual model that better aligns with the domain.

In the real world, renaming can be transformative. When a "problem" is reframed as an "opportunity," it changes how people approach it. Similarly, in code, renaming can transform our understanding of the system and reveal better designs.

### 9.8 Practical Naming Guidelines

Based on these philosophical insights, here are practical guidelines for naming in code:

1. **Names Should Evoke the Right Mental Model**
   - A name should immediately suggest the correct concept
   - When someone reads the name, they should form accurate expectations

2. **Names Should Respect Domain Boundaries**
   - A Person should have person-appropriate attributes
   - A Bank should have bank-appropriate attributes
   - Crossing these boundaries in naming indicates a design issue

3. **Names Should Reveal Intent, Not Implementation**
   - `fetchUserFromDatabase()` reveals implementation
   - `findUserByUsername()` reveals intent

4. **Names Should Be Proportional to Scope**
   - Variables with larger scope deserve more descriptive names
   - Short-lived local variables can have shorter names

5. **Names Should Evolve as Understanding Deepens**
   - Initial names are based on initial understanding
   - As domain knowledge increases, names should be refined

The names we choose in our code aren't mere labels or identifiers—they are the conceptual foundation that shapes how we and others understand the system. Thoughtful naming is one of the most profound philosophical acts in programming, defining the reality of our digital worlds.

## Chapter 10: Code as Storytelling

### 10.1 The Narrative Structure of Code

Well-written code tells a story that unfolds naturally. Just as a compelling novel engages readers through its narrative structure, well-crafted code should engage developers through a clear, coherent narrative flow.

In everyday life, we understand complex ideas more easily when they're presented as narratives rather than disconnected facts. We remember stories better than abstract concepts because our minds are wired for narrative. This same principle applies to code—developers understand and remember code better when it tells a coherent story.

Consider the components of narrative in code:
- **Classes are the cast of characters**: They have identity, characteristics, and behaviors
- **Methods are the actions these characters perform**: They define what the characters can do
- **The main flow is the plot**: It shows how the characters interact to achieve the program's purpose
- **Helper methods are subplots or supporting details**: They flesh out the narrative without distracting from the main story

A developer reading well-structured code should be able to follow the story at different levels of detail, just as a reader of a novel can follow the main plot while appreciating the nuances.

### 10.2 From Monolithic Methods to Narrative Flow

To illustrate the narrative approach, let's contrast two implementations of the same functionality:

```java
// Anti-Pattern: The Monolithic Method - a confusing, cluttered story
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

// Pattern: The Narrative Method - a clear, engaging story
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

The second implementation transforms the complex, monolithic method into a narrative that unfolds step by step. The main method reads like a table of contents or a plot summary, with each helper method acting as a chapter that develops a specific part of the story.

This narrative structure makes the code more engaging and understandable, just as a well-structured novel is more engaging than a wall of disconnected text.

### 10.3 Method Naming as Storytelling

In the narrative approach, method names are crucial storytelling elements. They should be verbs or verb phrases that clearly convey the action being performed:

- `processBooking()` → Too vague, like a chapter titled "Things Happen"
- `reserveSeatForUser()` → Clear and specific, like a chapter titled "The Hero Confronts the Villain"
- `validateCredentials()` → Explicit action, clear purpose
- `isEligibleForDiscount()` → Question format for boolean returns, creates narrative tension

Well-named methods create a narrative flow that reads almost like natural language, making the code's story easier to follow.

In effective storytelling, chapter titles give readers a clear sense of what to expect. Similarly, well-chosen method names prepare developers for what the method will do, making the code more navigable and understandable.

### 10.4 The Stepdown Rule

The stepdown rule organizes methods in a narrative hierarchy, where the story flows from high-level methods to increasingly detailed methods:

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

This hierarchical structure allows developers to read the code at different levels of detail, similar to how readers might skim a book for major plot points or dive deep into specific chapters for details.

In everyday storytelling, we naturally provide information in a stepdown manner, starting with the main points and then elaborating as needed. "I went to the store" might be followed by details about which store, what was purchased, and any interesting encounters. Code organized by the stepdown rule follows this same natural narrative pattern.

### 10.5 The Command-Query Separation

Clear storytelling requires a distinction between actions that change the state of the world (commands) and questions that provide information (queries). In code, this means methods should either:
- Perform an action that changes state (commands)
- Return information without side effects (queries)

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

This separation creates a clearer narrative because readers can easily distinguish between methods that move the story forward (commands) and methods that provide background information (queries).

In everyday communication, we understand the difference between questions ("What time is it?") and commands ("Please pass the salt"). Mixing these creates confusion ("What time is it and change your watch to match mine"). The same principle applies in code—separating commands and queries creates clearer, more understandable narratives.

### 10.6 Consistent Abstraction Levels

Within a method, all operations should be at the same level of abstraction to maintain narrative coherence:

```java
// Inconsistent abstraction levels - like a story that randomly jumps between high-level plot and minute details
public void processOrder(Order order) {
    validateOrder(order);  // High-level
    order.setStatus(OrderStatus.PROCESSING);  // Low-level
    paymentGateway.charge(order.getTotal(), order.getPaymentMethod());  // Mid-level
    sendConfirmationEmail(order);  // High-level
}

// Consistent abstraction levels - a coherent narrative flow
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

The second version maintains a consistent level of abstraction in the main method, creating a coherent narrative flow without distracting jumps between high and low-level details.

In storytelling, sudden shifts in focus or detail can be disorienting. A novel wouldn't jump from "The army prepared for battle" directly to "The general's left boot had a small scuff on the toe" without some transitional narration. Similarly, our code should maintain consistent abstraction levels to create a coherent narrative.

### 10.7 Error Handling as Plot Twists

In the narrative approach, error handling is treated as plot twists or complications in the story. Like good plot twists, error handling should be:

- Meaningful: Address real problems
- Proportional: Match the severity of the error
- Integrated: Flow naturally from the main narrative

```java
public void transferFunds(Account source, Account destination, Money amount) {
    validateTransferRequest(source, destination, amount);
    
    try {
        if (!source.hasSufficientFunds(amount)) {
            throw new InsufficientFundsException(source, amount);
        }
        
        source.withdraw(amount);
        destination.deposit(amount);
        recordTransfer(source, destination, amount);
    } catch (InsufficientFundsException e) {
        notifyInsufficientFunds(e.getAccount(), e.getAmount());
        throw e; // Rethrow for upstream handling
    } catch (AccountFrozenException e) {
        reversePartialTransfer(source, destination, amount);
        notifyAccountFrozen(e.getAccount());
        throw new TransferFailedException(e);
    }
}
```

This error handling reads like plot complications in a story—the transfer might be blocked by insufficient funds or a frozen account, and each complication is handled appropriately while maintaining the narrative flow.

In compelling stories, complications arise naturally from the plot and characters. Similarly, in well-written code, error handling should feel like a natural extension of the main narrative, not an awkward interruption.

### 10.8 Comments as Narrative Support

In the narrative approach, comments serve a specific role—they provide context, background, or explanation that enhances the story without replacing clear code:

```java
// Good comment - provides context that can't be expressed in code alone
/**
 * Calculates the pricing tier based on the customer's purchase history.
 * 
 * The algorithm follows the company's 2023 loyalty program guidelines:
 * - Silver tier: $1,000+ annual spending
 * - Gold tier: $5,000+ annual spending
 * - Platinum tier: $10,000+ annual spending
 * 
 * Note: These thresholds are subject to annual review and adjustment.
 */
public PricingTier calculatePricingTier(Customer customer) {
    // Implementation
}

// Bad comment - merely repeats what the code already says clearly
// Get the customer's annual spending
Money annualSpending = customer.getAnnualSpending();
```

Good comments enhance the narrative by providing information that can't be expressed in the code itself, similar to how an author might provide historical background or character motivations that enhance the story without being part of the main plot.

Code as storytelling transforms programming from a technical exercise into a form of communication between developers. When code tells a clear, coherent story, it becomes more engaging, more understandable, and ultimately more maintainable. By applying narrative principles to our code, we create systems that not only function correctly but also communicate their purpose and behavior effectively.

## Chapter 11: Method-Level Responsibility

### 11.1 The Single Responsibility Principle for Methods

The Single Responsibility Principle is traditionally applied to classes:

> A class should have only one reason to change.

However, this principle extends naturally to the method level:

> A method should do exactly one thing, and do it well.

This principle reflects a deeper philosophical understanding of responsibility and purpose. In the real world, tools with a single, clear purpose are often more effective than multi-purpose tools. A chef's knife is designed specifically for cutting and does it exceptionally well. A Swiss Army knife can cut, but not as effectively because it's designed to do many things.

Similarly, methods with a single, clear responsibility tend to be more effective than methods that try to do many things:

```java
// Multiple responsibilities - the Swiss Army knife approach
public void processOrder(Order order) {
    // Validate order
    if (order == null) {
        throw new IllegalArgumentException("Order cannot be null");
    }
    if (order.getItems().isEmpty()) {
        throw new IllegalArgumentException("Order must contain at least one item");
    }
    
    // Calculate total
    Money total = Money.ZERO;
    for (OrderItem item : order.getItems()) {
        total = total.add(item.getPrice().multiply(item.getQuantity()));
    }
    
    // Apply discounts
    if (order.getCustomer().isPremium()) {
        total = total.multiply(0.9); // 10% discount for premium customers
    }
    
    // Process payment
    PaymentResult result = paymentGateway.charge(order.getPaymentMethod(), total);
    if (!result.isSuccessful()) {
        throw new PaymentFailedException(result.getErrorMessage());
    }
    
    // Update inventory
    for (OrderItem item : order.getItems()) {
        inventoryService.decrementStock(item.getProduct(), item.getQuantity());
    }
    
    // Update order status
    order.setStatus(OrderStatus.PAID);
    order.setTotalAmount(total);
    orderRepository.save(order);
    
    // Send confirmation
    emailService.sendOrderConfirmation(order);
}

// Single responsibility - the specialized tool approach
public void processOrder(Order order) {
    validateOrder(order);
    
    Money total = calculateOrderTotal(order);
    total = applyDiscounts(total, order.getCustomer());
    
    processPayment(order.getPaymentMethod(), total);
    updateInventory(order.getItems());
    updateOrderStatus(order, total);
    sendConfirmation(order);
}

private void validateOrder(Order order) {
    Objects.requireNonNull(order, "Order cannot be null");
    if (order.getItems().isEmpty()) {
        throw new IllegalArgumentException("Order must contain at least one item");
    }
}

private Money calculateOrderTotal(Order order) {
    return order.getItems().stream()
        .map(item -> item.getPrice().multiply(item.getQuantity()))
        .reduce(Money.ZERO, Money::add);
}

private Money applyDiscounts(Money total, Customer customer) {
    if (customer.isPremium()) {
        return total.multiply(0.9); // 10% discount for premium customers
    }
    return total;
}

// Additional single-responsibility methods
```

The second approach creates a set of specialized methods, each with a single responsibility. This makes the code more modular, more reusable, and easier to understand and maintain.

### 11.2 Cohesion: The Measure of Responsibility Focus

Method-level responsibility can be measured through cohesion—the degree to which the elements of a method belong together. High cohesion means all statements in the method work together to fulfill a single responsibility.

Consider these two implementations:

```java
// Low cohesion - mixed responsibilities
public void processCustomer(Customer customer) {
    // Update customer record
    customer.setLastVisitDate(LocalDate.now());
    customerRepository.save(customer);
    
    // Generate loyalty points
    if (customer.getVisitCount() > 10) {
        LoyaltyPoints points = new LoyaltyPoints(customer, 100);
        loyaltyRepository.save(points);
    }
    
    // Send marketing email if subscribed
    if (customer.isSubscribedToMarketing()) {
        Email marketingEmail = new Email(
            customer.getEmail(),
            "Special Offers Just For You",
            marketingTemplateGenerator.generate(customer)
        );
        emailService.send(marketingEmail);
    }
}

// High cohesion - focused responsibility
public void recordCustomerVisit(Customer customer) {
    customer.setLastVisitDate(LocalDate.now());
    customer.incrementVisitCount();
    customerRepository.save(customer);
}

public void processLoyaltyPoints(Customer customer) {
    if (customer.getVisitCount() > 10) {
        LoyaltyPoints points = new LoyaltyPoints(customer, 100);
        loyaltyRepository.save(points);
    }
}

public void sendMarketingEmailIfSubscribed(Customer customer) {
    if (customer.isSubscribedToMarketing()) {
        Email marketingEmail = new Email(
            customer.getEmail(),
            "Special Offers Just For You",
            marketingTemplateGenerator.generate(customer)
        );
        emailService.send(marketingEmail);
    }
}

public void processCustomer(Customer customer) {
    recordCustomerVisit(customer);
    processLoyaltyPoints(customer);
    sendMarketingEmailIfSubscribed(customer);
}
```

The second approach creates highly cohesive methods, each focused on a single responsibility. This makes the code more modular and easier to understand, test, and maintain.

In the real world, we understand the value of focus. A person trying to simultaneously cook dinner, help with homework, and conduct a business call will likely do all three poorly. Similarly, a method trying to handle multiple responsibilities will likely do all of them less effectively than separate, focused methods would.

### 11.3 The Glue Method Pattern

When methods have single, focused responsibilities, they need to be coordinated. The "glue method" pattern addresses this by creating higher-level methods that compose lower-level methods:

```java
// Glue method that composes focused, single-responsibility methods
public void checkoutShoppingCart(ShoppingCart cart, Customer customer, PaymentMethod paymentMethod) {
    validateCheckoutPreconditions(cart, customer, paymentMethod);
    
    Order order = createOrderFromCart(cart, customer);
    Money total = calculateOrderTotal(order);
    applyDiscountsAndPromotions(order, customer);
    
    processPayment(order, paymentMethod);
    fulfillOrder(order);
    notifyCustomer(order, customer);
    updateInventory(order);
}
```

This glue method acts as a coordinator, composing the specialized methods into a complete workflow. It provides a high-level view of the process while delegating the details to the specialized methods.

In the real world, complex processes often have coordinators or managers who ensure all specialized functions work together smoothly. A restaurant manager doesn't cook, serve, or wash dishes personally but ensures all these specialized roles coordinate effectively. Similarly, glue methods don't implement details themselves but coordinate the specialized methods that do.

### 11.4 The Humble Method Pattern

The "humble method" pattern creates simple methods that do very little work themselves but delegate to other methods or objects:

```java
// Humble method pattern
public Order createOrder(Customer customer, List<OrderItem> items) {
    validateOrderCreation(customer, items);
    Order order = orderFactory.createOrder(customer, items);
    enrichOrderWithMetadata(order);
    trackOrderCreation(order);
    return order;
}
```

This method does minimal work directly, delegating most responsibilities to other methods or objects. Its primary role is to coordinate the workflow, not to implement the details.

The humble method pattern reflects a philosophical approach to responsibility where the method acknowledges its limitations and delegates to specialists. In the real world, good leaders often operate this way—they don't try to do everything themselves but coordinate the efforts of specialists.

### 11.5 The Transformation Chain Pattern

For methods that process data through multiple stages, the transformation chain pattern creates a clear sequence of transformations:

```java
// Transformation chain pattern
public Report generateMonthlyReport(Month month, Year year) {
    List<Transaction> transactions = fetchTransactionsForPeriod(month, year);
    List<Transaction> validTransactions = filterValidTransactions(transactions);
    Map<Category, List<Transaction>> categorizedTransactions = categorizeTransactions(validTransactions);
    Map<Category, Money> categoryTotals = calculateCategoryTotals(categorizedTransactions);
    Report report = createReportFromTotals(categoryTotals, month, year);
    return report;
}
```

Each step in the chain transforms the data in a specific way, creating a clear flow from input to output. This pattern is especially useful for data processing workflows.

In the real world, assembly lines operate on this principle—each station performs a specific transformation, and the product moves through a sequence of these transformations to reach its final form. The transformation chain pattern brings this clarity to data processing in code.

### 11.6 Benefits of Method-Level Responsibility

Applying the single responsibility principle at the method level yields numerous benefits:

1. **Enhanced Readability**
   - Methods with clear, focused responsibilities are easier to understand
   - Method names can accurately describe their single purpose
   - Code reads more like natural language

2. **Improved Testability**
   - Methods with single responsibilities are easier to test
   - Test cases are more focused and comprehensive
   - Edge cases can be tested more thoroughly

3. **Greater Reusability**
   - Specialized methods can be reused in different contexts
   - Methods with single responsibilities are more likely to be useful elsewhere
   - Code duplication is reduced

4. **Lower Cognitive Load**
   - Developers can understand and reason about smaller, focused methods more easily
   - The mental model of each method is simpler
   - Changes to one responsibility don't affect others

5. **Better Maintainability**
   - Methods with single responsibilities are easier to update
   - Bug fixes are more localized and less likely to cause regressions
   - New features can be added with less risk

Method-level responsibility is about recognizing that methods, like tools, are most effective when they have a clear, focused purpose. By creating methods that do exactly one thing and do it well, we create code that is more readable, testable, reusable, and maintainable.

# Part IV: Applied Philosophical Programming

## Chapter 12: SOLID Principles with Philosophical Depth

### 12.1 Beyond Mechanical Application

The SOLID principles—Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion—are often taught as mechanical rules. However, they have deeper philosophical foundations that can transform how we understand and apply them.

In everyday life, principles work best when we understand their underlying philosophy rather than applying them mechanically. A person who understands the philosophy behind "treat others as you would like to be treated" will apply it more effectively than someone who follows it as a rigid rule. Similarly, understanding the philosophical foundations of SOLID leads to more effective application.

### 12.2 Single Responsibility Principle: Authority and Purpose

The Single Responsibility Principle states that a class should have only one reason to change. Philosophically, this principle is about authority and purpose:

> Each class should answer to only one authority and serve only one purpose.

Consider a real-world example: In a hospital, the pharmacy has authority over medication, medical staff has authority over treatment, and administration has authority over billing. These clear authority boundaries prevent conflicts and ensure each department can fulfill its purpose effectively.

Similarly, in code, classes should have clear authority boundaries:

```java
// Violates SRP - answers to multiple authorities
public class Patient {
    private final UUID id;
    private final String name;
    private final LocalDate dateOfBirth;
    private List<Prescription> prescriptions;
    private Insurance insurance;
    private BillingAccount billingAccount;
    
    public void prescribeMedication(Medication medication, Doctor doctor) {
        // Prescription logic
    }
    
    public void generateBill() {
        // Billing logic
    }
    
    public void processInsuranceClaim() {
        // Insurance claim logic
    }
}

// Respects SRP - clear authority boundaries
public class Patient {
    private final UUID id;
    private final String name;
    private final LocalDate dateOfBirth;
    private List<Prescription> prescriptions;
    
    public void addPrescription(Prescription prescription) {
        prescriptions.add(prescription);
    }
}

public class PrescriptionService {
    public Prescription createPrescription(Patient patient, Medication medication, Doctor doctor) {
        // Prescription logic under medical authority
    }
}

public class BillingService {
    public Bill generateBill(Patient patient, List<Treatment> treatments) {
        // Billing logic under financial authority
    }
}

public class InsuranceService {
    public Claim processInsuranceClaim(Patient patient, Bill bill) {
        // Insurance logic under insurance authority
    }
}
```

In the second approach, each class answers to a single authority and serves a clear purpose. This reflects the natural authority boundaries of the domain.

### 12.3 Open/Closed Principle: Evolution Without Disruption

The Open/Closed Principle states that classes should be open for extension but closed for modification. Philosophically, this principle is about evolution without disruption:

> Systems should evolve by adding new capabilities without altering existing behavior.

In nature, evolution works by adding new traits rather than modifying existing ones. Mammals didn't evolve by removing reptilian traits but by adding new mammalian traits on top of the existing foundation. Similarly, well-designed code evolves through extension rather than modification.

```java
// Violates OCP - requires modification for new types
public class PaymentProcessor {
    public void processPayment(Order order) {
        switch (order.getPaymentMethod().getType()) {
            case "CREDIT_CARD":
                processCreditCardPayment(order);
                break;
            case "PAYPAL":
                processPayPalPayment(order);
                break;
            // Adding a new payment method requires modifying this class
        }
    }
}

// Respects OCP - extends through new implementations
public interface PaymentMethod {
    void processPayment(Order order);
}

public class CreditCardPayment implements PaymentMethod {
    @Override
    public void processPayment(Order order) {
        // Credit card payment logic
    }
}

public class PayPalPayment implements PaymentMethod {
    @Override
    public void processPayment(Order order) {
        // PayPal payment logic
    }
}

// Adding a new payment method just requires a new implementation
public class CryptoCurrencyPayment implements PaymentMethod {
    @Override
    public void processPayment(Order order) {
        // Cryptocurrency payment logic
    }
}

public class PaymentProcessor {
    public void processPayment(Order order) {
        order.getPaymentMethod().processPayment(order);
    }
}
```

The second approach allows the system to evolve by adding new payment methods without modifying existing code. This reflects how natural systems evolve through addition rather than modification.

### 12.4 Liskov Substitution Principle: Behavioral Integrity

The Liskov Substitution Principle states that objects of a superclass should be replaceable with objects of a subclass without affecting the correctness of the program. Philosophically, this principle is about behavioral integrity:

> A subtype should honor the promises made by its supertype.

In human relationships, trust is built on people honoring their promises. If a person promises to perform a task in a certain way but then does something entirely different, trust is broken. Similarly, subtypes must honor the behavioral promises made by their supertypes.

```java
// Violates LSP - breaks the promise of the base class
public class Rectangle {
    protected int width;
    protected int height;
    
    public void setWidth(int width) {
        this.width = width;
    }
    
    public void setHeight(int height) {
        this.height = height;
    }
    
    public int getArea() {
        return width * height;
    }
}

public class Square extends Rectangle {
    @Override
    public void setWidth(int width) {
        this.width = width;
        this.height = width; // Breaks the promise of setWidth
    }
    
    @Override
    public void setHeight(int height) {
        this.width = height; // Breaks the promise of setHeight
        this.height = height;
    }
}

// Client code that breaks with Square
public void resizeRectangle(Rectangle rectangle) {
    rectangle.setWidth(10);
    rectangle.setHeight(20);
    assert rectangle.getArea() == 200; // Fails with Square
}

// Respects LSP - clear behavioral contracts
public interface Shape {
    int getArea();
}

public class Rectangle implements Shape {
    private int width;
    private int height;
    
    public Rectangle(int width, int height) {
        this.width = width;
        this.height = height;
    }
    
    public void setWidth(int width) {
        this.width = width;
    }
    
    public void setHeight(int height) {
        this.height = height;
    }
    
    @Override
    public int getArea() {
        return width * height;
    }
}

public class Square implements Shape {
    private int side;
    
    public Square(int side) {
        this.side = side;
    }
    
    public void setSide(int side) {
        this.side = side;
    }
    
    @Override
    public int getArea() {
        return side * side;
    }
}
```

In the second approach, Square doesn't pretend to be a Rectangle with all its behaviors. Instead, both implement the Shape interface with the shared behavior (getArea) but have their own specific behaviors that respect their true nature.

### 12.5 Interface Segregation Principle: Consensual Contracts

The Interface Segregation Principle states that clients should not be forced to depend on methods they do not use. Philosophically, this principle is about consensual contracts:

> Entities should only agree to contracts that align with their capabilities and needs.

In social contracts, forced compliance with irrelevant obligations leads to resentment and dysfunction. Similarly, classes forced to implement methods they don't need create brittle, confusing designs.

```java
// Violates ISP - forces implementations to handle methods they don't need
public interface Employee {
    void work();
    void takeBreak();
    void receivePayment();
    void attendMeeting();
    void performAdminTasks();
    void manageTeam();
}

// Contract forces all implementations to define all methods
public class Developer implements Employee {
    @Override
    public void work() { /* Implementation */ }
    
    @Override
    public void takeBreak() { /* Implementation */ }
    
    @Override
    public void receivePayment() { /* Implementation */ }
    
    @Override
    public void attendMeeting() { /* Implementation */ }
    
    @Override
    public void performAdminTasks() {
        // Empty - developers don't perform admin tasks
    }
    
    @Override
    public void manageTeam() {
        // Empty - developers don't manage teams
    }
}

// Respects ISP - focused, consensual contracts
public interface Worker {
    void work();
    void takeBreak();
}

public interface Payable {
    void receivePayment();
}

public interface TeamMember {
    void attendMeeting();
}

public interface Administrator {
    void performAdminTasks();
}

public interface Manager {
    void manageTeam();
}

// Classes only implement the interfaces that align with their roles
public class Developer implements Worker, Payable, TeamMember {
    @Override
    public void work() { /* Implementation */ }
    
    @Override
    public void takeBreak() { /* Implementation */ }
    
    @Override
    public void receivePayment() { /* Implementation */ }
    
    @Override
    public void attendMeeting() { /* Implementation */ }
}

public class TeamLead implements Worker, Payable, TeamMember, Manager {
    // Implements only relevant interfaces
}
```

The second approach creates focused interfaces that represent specific capabilities, allowing classes to implement only the contracts that align with their true nature.

### 12.6 Dependency Inversion Principle: Respecting Conceptual Superiority

The Dependency Inversion Principle states that high-level modules should not depend on low-level modules; both should depend on abstractions. Philosophically, this principle is about respecting conceptual superiority:

> Concepts should depend on abstractions that reflect their true nature, not on incidental implementation details.

In architecture, a building's design should be driven by its purpose and human needs, not by the limitations of specific building materials. The materials serve the design, not vice versa. Similarly, high-level modules should be driven by domain concepts, not by implementation details.

```java
// Violates DIP - high-level policy depends on low-level details
public class OrderService {
    private MySQLOrderRepository orderRepository;
    private StripePaymentProcessor paymentProcessor;
    
    public OrderService() {
        this.orderRepository = new MySQLOrderRepository();
        this.paymentProcessor = new StripePaymentProcessor();
    }
    
    public void placeOrder(Order order) {
        paymentProcessor.processPayment(order);
        orderRepository.save(order);
    }
}

// Respects DIP - respecting conceptual superiority
public interface OrderRepository {
    void save(Order order);
}

public interface PaymentProcessor {
    void processPayment(Order order);
}

public class OrderService {
    private final OrderRepository orderRepository;
    private final PaymentProcessor paymentProcessor;
    
    public OrderService(OrderRepository orderRepository, PaymentProcessor paymentProcessor) {
        this.orderRepository = orderRepository;
        this.paymentProcessor = paymentProcessor;
    }
    
    public void placeOrder(Order order) {
        paymentProcessor.processPayment(order);
        orderRepository.save(order);
    }
}

// Implementations serve the abstractions
public class MySQLOrderRepository implements OrderRepository {
    @Override
    public void save(Order order) {
        // MySQL implementation
    }
}

public class StripePaymentProcessor implements PaymentProcessor {
    @Override
    public void processPayment(Order order) {
        // Stripe implementation
    }
}
```

In the second approach, the OrderService depends on abstractions (OrderRepository, PaymentProcessor) that reflect domain concepts rather than implementation details (MySQL, Stripe). This respects the conceptual superiority of the domain over implementation technologies.

### 12.7 SOLID as a Unified Philosophy

The SOLID principles aren't isolated rules but a unified philosophy of design:

1. **Single Responsibility Principle**: Each entity has a clear authority and purpose.
2. **Open/Closed Principle**: Systems evolve through extension, not modification.
3. **Liskov Substitution Principle**: Subtypes honor the behavioral promises of their supertypes.
4. **Interface Segregation Principle**: Entities only agree to contracts that align with their nature.
5. **Dependency Inversion Principle**: Entities depend on abstractions that respect their conceptual level.

Together, these principles create a design philosophy that respects the true nature of entities, their relationships, and their evolution. This philosophical approach leads to systems that are not just technically sound but conceptually coherent and aligned with the realities they model.

## Chapter 13: Deep JDK Understanding

### 13.1 The JDK as a Philosophical Text

The Java Development Kit (JDK) is more than just a collection of classes and methods—it's a philosophical text that embodies design principles, trade-offs, and conceptual models. By studying the JDK deeply, we gain insights that transcend syntax and API details.

Just as studying classical philosophical texts provides insights into human nature and society, studying the JDK provides insights into software design and programming paradigms. The JDK represents decades of collective wisdom about object-oriented design, type systems, collections, concurrency, and more.

### 13.2 String Immutability: Security, Identity, and Performance

The immutability of String in Java embodies deep design principles:

```java
public final class String implements Comparable<String>, CharSequence {
    private final char[] value; // The actual characters, private and final
    
    // Methods like substring() create NEW String instances
    public String substring(int beginIndex, int endIndex) {
        // Returns new String, doesn't modify this one
    }
}
```

Philosophically, String immutability reflects:

1. **Security**: String literals are often used for security-sensitive data (usernames, permissions). Immutability ensures that once created, these values cannot be altered by malicious code.

2. **Identity**: A string's value is its identity. The statement `"hello".equals("hello")` is true because the value defines the identity, not the object reference. Immutability preserves this identity-by-value semantics.

3. **Thread Safety**: Immutable objects are inherently thread-safe. Multiple threads can safely use the same String instance without synchronization because its state cannot change.

4. **Hash Code Stability**: Strings are frequently used as HashMap keys. Immutability ensures their hash codes remain stable, maintaining the integrity of hash-based collections.

In the real world, important documents (like birth certificates) are designed to be tamper-evident or tamper-resistant for similar reasons—their content represents facts whose integrity must be protected. String immutability brings this same protection to textual data in Java.

### 13.3 Collections Framework: A Taxonomy of Data Structures

The Java Collections Framework embodies a philosophical approach to organizing data:

```java
public interface Collection<E> extends Iterable<E> {
    // Basic operations
    boolean add(E e);
    boolean remove(Object o);
    boolean contains(Object o);
    
    // Bulk operations
    boolean addAll(Collection<? extends E> c);
    boolean removeAll(Collection<?> c);
    boolean retainAll(Collection<?> c);
    
    // Other methods...
}

public interface List<E> extends Collection<E> {
    // List-specific methods
    E get(int index);
    E set(int index, E element);
    void add(int index, E element);
    E remove(int index);
    // Other methods...
}

public interface Set<E> extends Collection<E> {
    // No additional methods - semantics differ
}

public interface Map<K, V> {
    // Map-specific methods
    V get(Object key);
    V put(K key, V value);
    V remove(Object key);
    // Other methods...
}
```

This framework reflects several philosophical principles:

1. **Classification by Behavior**: Collections are classified by their behavioral characteristics (ordered, unique elements, key-value pairs) rather than implementation details.

2. **Interface-Implementation Separation**: The interfaces (List, Set, Map) define what collections do, while implementations (ArrayList, LinkedList, HashMap) define how they do it.

3. **Substitutability**: Any implementation of an interface can be substituted for another implementation of the same interface, preserving behavior while potentially changing performance characteristics.

4. **Evolution Through Extension**: New collection types can be added by implementing existing interfaces or extending the hierarchy, without disrupting existing code.

In the biological world, taxonomy classifies organisms based on shared characteristics and evolutionary relationships. Similarly, the Collections Framework classifies data structures based on their behavioral characteristics and conceptual relationships.

### 13.4 Object Methods: The Universal Contract

Every Java class inherits from Object, which defines methods that establish a universal contract for all objects:

```java
public class Object {
    public boolean equals(Object obj) {
        return this == obj;
    }
    
    public int hashCode() {
        // Native method that returns identity hash code
    }
    
    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }
    
    // Other methods...
}
```

These methods embody philosophical concepts:

1. **equals()**: Defines what it means for two objects to be considered "the same." This is a profound philosophical question about identity and equality.

2. **hashCode()**: Creates a numerical representation of an object's state, allowing objects to be efficiently organized in hash-based collections. This represents the concept of mapping complex entities to simplified representations.

3. **toString()**: Provides a human-readable representation of an object, bridging the gap between the machine's internal representation and human understanding.

The equals-hashCode contract (equal objects must have equal hash codes) represents a fundamental principle: consistent identity requires consistent representation. This mirrors philosophical concepts of identity and recognition.

### 13.5 Comparable and Comparator: Natural Order vs. Imposed Order

Java provides two mechanisms for comparing objects:

```java
// Natural ordering through Comparable
public class Person implements Comparable<Person> {
    private final String lastName;
    private final String firstName;
    
    @Override
    public int compareTo(Person other) {
        // Natural order: last name, then first name
        int lastNameComparison = this.lastName.compareTo(other.lastName);
        if (lastNameComparison != 0) {
            return lastNameComparison;
        }
        return this.firstName.compareTo(other.firstName);
    }
}

// External ordering through Comparator
public class AgeComparator implements Comparator<Person> {
    @Override
    public int compare(Person p1, Person p2) {
        return Integer.compare(p1.getAge(), p2.getAge());
    }
}
```

This dual approach reflects two philosophical perspectives on order:

1. **Comparable (Natural Order)**: Some entities have an intrinsic, natural ordering. Just as numbers have a natural numerical order and words have a natural alphabetical order, some domain objects have a natural order inherent to their nature.

2. **Comparator (Imposed Order)**: Order can also be imposed externally based on different perspectives or needs. People might be ordered by age in one context, by height in another, or by income in yet another.

This distinction mirrors philosophical debates about whether order is inherent in the nature of things or imposed by external perspectives. Java accommodates both viewpoints through these two mechanisms.

### 13.6 Exception Hierarchy: The Nature of Errors

Java's exception hierarchy embodies a philosophy of error handling:

```java
public class Throwable {
    // Base class for all errors and exceptions
}

public class Error extends Throwable {
    // Serious problems that normal applications should not catch
}

public class Exception extends Throwable {
    // Conditions that a reasonable application might want to catch
}

public class RuntimeException extends Exception {
    // Exceptions that can occur during normal program execution
}
```

This hierarchy reflects philosophical distinctions:

1. **Errors vs. Exceptions**: Errors represent serious, often unrecoverable problems (like OutOfMemoryError), while exceptions represent conditions that might be handled by the application.

2. **Checked vs. Unchecked Exceptions**: Checked exceptions (subclasses of Exception but not RuntimeException) must be explicitly handled or declared, representing anticipated problems. Unchecked exceptions (subclasses of RuntimeException) represent programming errors or unexpected conditions.

This distinction mirrors philosophical concepts of fate versus choice. Some events (errors) are beyond our control and must be accepted, while others (exceptions) can be anticipated and managed.

### 13.7 Generics: Type Parameterization

Java's generics system represents a philosophical approach to type safety:

```java
// Type parameterization
public class Box<T> {
    private T content;
    
    public void put(T item) {
        this.content = item;
    }
    
    public T get() {
        return content;
    }
}

// Bounded type parameters
public class NumberBox<T extends Number> {
    private T content;
    
    public void put(T item) {
        this.content = item;
    }
    
    public T get() {
        return content;
    }
    
    public double getDoubleValue() {
        return content.doubleValue(); // Safe because T extends Number
    }
}
```

Philosophically, generics represent:

1. **Parameterized Abstraction**: Generics allow us to define abstractions that can be specialized for specific types. This reflects the philosophical concept of universals that can be instantiated with particulars.

2. **Type Safety with Flexibility**: Generics provide type safety without requiring a separate implementation for each type. This balances the competing values of safety and flexibility.

3. **Bounded Quantification**: Bounded type parameters (like `<T extends Number>`) represent the concept of constrained freedom—the type parameter can vary, but only within defined boundaries.

In philosophy, the relationship between universals and particulars is a fundamental concern. Generics provide a way to express universal patterns that can be instantiated with particular types, maintaining both conceptual unity and practical diversity.

### 13.8 Functional Interfaces: Functions as First-Class Citizens

With Java 8, functions became first-class citizens through functional interfaces:

```java
@FunctionalInterface
public interface Function<T, R> {
    R apply(T t);
}

@FunctionalInterface
public interface Predicate<T> {
    boolean test(T t);
}

@FunctionalInterface
public interface Consumer<T> {
    void accept(T t);
}
```

This represents a philosophical shift:

1. **Functions as Entities**: Functions are no longer just operations attached to objects but can be entities in their own right, passed around, stored, and composed.

2. **Declarative vs. Imperative**: Functional programming emphasizes what should be computed rather than how it should be computed, shifting from imperative to declarative thinking.

3. **Composition over Aggregation**: Function composition (combining functions to create new functions) becomes a primary means of building behavior, complementing the object-oriented approach of aggregating behavior in classes.

This shift mirrors philosophical debates about the nature of action and identity. Are actions simply properties of actors, or can actions themselves have independent existence? Functional programming acknowledges the latter perspective, treating functions as entities with their own identity and combinatorial properties.

### 13.9 Streams: Declarative Data Processing

The Stream API introduced in Java 8 represents a declarative approach to data processing:

```java
List<Person> adults = persons.stream()
    .filter(person -> person.getAge() >= 18)
    .sorted(Comparator.comparing(Person::getLastName))
    .collect(Collectors.toList());
```

Philosophically, streams represent:

1. **Declarative Processing**: Streams express what transformations should be applied to data, not how to implement those transformations. This shifts the focus from algorithms to intent.

2. **Composition of Operations**: Stream operations are composed into pipelines, with each operation building on the result of the previous one. This reflects the philosophical concept of emergent complexity from simple compositions.

3. **Lazy Evaluation**: Streams evaluate elements only as needed, representing the philosophical concept of potentiality becoming actuality only when required.

In traditional philosophy, the distinction between potentiality and actuality is fundamental. Streams embody this distinction by maintaining potential results that are realized only when terminal operations are applied.

A deep understanding of the JDK goes beyond knowing its APIs—it involves appreciating the philosophical principles and design decisions that shaped it. By studying the JDK as a philosophical text, we gain insights that can inform our own design decisions and deepen our understanding of software development.

## Chapter 14: Testing with Philosophical Focus

### 14.1 Testing as Philosophical Inquiry

Testing is often approached as a technical activity focused on finding bugs or ensuring functionality. However, from a philosophical perspective, testing is a form of inquiry that explores the nature, behavior, and boundaries of the systems we create.

Just as philosophers use thought experiments to test ideas and expose contradictions, software tests are experiments that probe the behavior of our code under various conditions. This shift in perspective transforms testing from a mundane verification activity to a profound exploration of the digital realities we create.

### 14.2 Identity Tests: Verifying Immutable Core Identity

If a class has immutable core identity, tests should verify that this identity cannot be changed:

```java
@Test
public void movieTitleCannotBeChanged() {
    Movie movie = new Movie("The Godfather", LocalDate.of(1972, 3, 24), Set.of(MovieGenre.DRAMA));
    
    // Verify no setter exists
    assertFalse(Arrays.stream(Movie.class.getMethods())
                    .anyMatch(method -> method.getName().equals("setTitle")));
    
    // Try to access private field using reflection (should fail)
    assertThrows(IllegalAccessException.class, () -> {
        Field titleField = Movie.class.getDeclaredField("title");
        titleField.setAccessible(true);
        titleField.set(movie, "Changed Title");
    });
}
```

This test doesn't just verify an implementation detail—it confirms a philosophical property of the Movie class: the immutability of its core identity. This aligns with our understanding that a movie's title is fundamental to what that movie is.

### 14.3 Authority Tests: Verifying Access Control

Tests should verify that only authorized entities can perform certain operations:

```java
@Test
public void actorRemunerationIsOnlyVisibleToAuthorizedParties() {
    Actor actor = new Actor("John", "Doe", LocalDate.of(1980, 1, 1), Gender.MALE, new BigDecimal("1000000"));
    Agent authorizedAgent = new Agent("Jane", "Smith");
    Agent unauthorizedAgent = new Agent("Bob", "Johnson");
    
    // Establish relationship with authorized agent
    actor.setAgent(authorizedAgent);
    
    // Authorized agent can access remuneration
    assertEquals(new BigDecimal("1000000"), actor.getRemunerationForAgent(authorizedAgent));
    
    // Unauthorized agent cannot access remuneration
    assertThrows(UnauthorizedAccessException.class, () -> {
        actor.getRemunerationForAgent(unauthorizedAgent);
    });
}
```

This test verifies that the Actor class enforces proper authority boundaries for accessing sensitive information, aligning with real-world authority patterns where salary information is shared selectively based on established relationships.

### 14.4 Invariant Tests: Verifying Consistent Properties

Tests should verify that class invariants are maintained throughout the object's lifecycle:

```java
@Test
public void bankAccountBalanceNeverNegative() {
    BankAccount account = new BankAccount("123456", new Money(BigDecimal.valueOf(100), Currency.USD));
    
    // Successful withdrawal
    assertTrue(account.withdraw(new Money(BigDecimal.valueOf(50), Currency.USD)));
    assertEquals(new Money(BigDecimal.valueOf(50), Currency.USD), account.getBalance());
    
    // Attempt to withdraw more than balance
    assertFalse(account.withdraw(new Money(BigDecimal.valueOf(100), Currency.USD)));
    assertEquals(new Money(BigDecimal.valueOf(50), Currency.USD), account.getBalance());
    
    // Balance should never be negative
    Field balanceField = BankAccount.class.getDeclaredField("balance");
    balanceField.setAccessible(true);
    Money balance = (Money) balanceField.get(account);
    assertTrue(balance.getAmount().compareTo(BigDecimal.ZERO) >= 0);
}
```

This test verifies that the BankAccount class maintains its invariant (non-negative balance) even when invalid operations are attempted. This aligns with the philosophical understanding that certain properties of entities must remain consistent throughout their existence.

### 14.5 Behavioral Tests: Verifying Real-World Alignment

Tests should verify that objects behave according to their real-world counterparts:

```java
@Test
public void seatCannotBeBookedTwice() {
    Seat seat = new Seat('A', 1, SeatType.STANDARD);
    
    // First booking succeeds
    assertTrue(seat.book());
    assertEquals(SeatStatus.BOOKED, seat.getStatus());
    
    // Second booking fails
    assertFalse(seat.book());
    assertEquals(SeatStatus.BOOKED, seat.getStatus());
}
```

This test verifies that a Seat behaves like a real-world seat in a theatre—once booked, it cannot be booked again. This alignment with real-world behavior is a key aspect of philosophical programming.

### 14.6 Concurrent Authority Tests

Tests should verify that authority boundaries are maintained even under concurrent access:

```java
@Test
public void concurrentSeatReservationMaintainsConsistency() throws InterruptedException {
    ShowTime showTime = createShowTimeWithAvailableSeats();
    SeatCoordinate seat = new SeatCoordinate('A', 1);
    
    // Create countdown latch for synchronization
    CountDownLatch startLatch = new CountDownLatch(1);
    CountDownLatch finishLatch = new CountDownLatch(2);
    
    // Results for each thread
    AtomicBoolean result1 = new AtomicBoolean();
    AtomicBoolean result2 = new AtomicBoolean();
    
    // Create two threads trying to book the same seat
    Thread thread1 = new Thread(() -> {
        try {
            startLatch.await(); // Wait for start signal
            result1.set(showTime.reserveSeat(seat));
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } finally {
            finishLatch.countDown();
        }
    });
    
    Thread thread2 = new Thread(() -> {
        try {
            startLatch.await(); // Wait for start signal
            result2.set(showTime.reserveSeat(seat));
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        } finally {
            finishLatch.countDown();
        }
    });
    
    // Start threads
    thread1.start();
    thread2.start();
    startLatch.countDown(); // Signal threads to start
    finishLatch.await(); // Wait for both threads to finish
    
    // Verify only one thread succeeded
    assertTrue(result1.get() ^ result2.get(), "Only one thread should succeed");
    assertEquals(SeatStatus.RESERVED, showTime.getSeatStatus(seat), "Seat should be reserved");
}
```

This test verifies that the ShowTime class maintains proper authority over seat reservation even when multiple threads attempt to reserve the same seat concurrently. This aligns with the philosophical understanding that authority boundaries must be maintained even under pressure.

### 14.7 Substitutability Tests

Tests should verify that subtypes can be substituted for their base types without changing behavior:

```java
@Test
public void premiumUserCanBeUsedWhereUserIsExpected() {
    User regularUser = new RegularUser("user1", "password", "John", "Doe");
    User premiumUser = new PremiumUser("user2", "password", "Jane", "Smith", PremiumLevel.GOLD);
    
    UserService userService = new UserService();
    
    // Both user types should work with the service
    assertEquals("John Doe", userService.getFullName(regularUser));
    assertEquals("Jane Smith", userService.getFullName(premiumUser));
    
    // Premium user should maintain its special capabilities
    assertTrue(premiumUser instanceof PremiumUser);
    assertEquals(PremiumLevel.GOLD, ((PremiumUser) premiumUser).getPremiumLevel());
}
```

This test verifies that the PremiumUser subtype can be substituted for the User base type without altering behavior, while still maintaining its additional capabilities. This aligns with the Liskov Substitution Principle and the philosophical concept of subtype responsibility.

### 14.8 Testing as Documentation

Tests serve as executable documentation that captures the philosophical intent of the code:

```java
@Test
public void personNameIsImmutablePartOfIdentity() {
    // Arrange
    Person person = new Person("John", "Doe", LocalDate.of(1980, 1, 1), Gender.MALE);
    
    // Act & Assert - no method exists to change the name
    assertFalse(Arrays.stream(Person.class.getMethods())
                    .anyMatch(method -> method.getName().equals("setFirstName")));
    assertFalse(Arrays.stream(Person.class.getMethods())
                    .anyMatch(method -> method.getName().equals("setLastName")));
    
    // Assert that we can still access the name
    assertEquals("John", person.getFirstName());
    assertEquals("Doe", person.getLastName());
}
```

This test explicitly documents the philosophical decision that a person's name is an immutable part of their identity. Even without reading the implementation, developers can understand the design intent through this test.

### 14.9 The Testing Mindset

Testing with a philosophical focus requires a shift in mindset from mere verification to deep inquiry:

1. **Ask Philosophical Questions**: Instead of just asking "Does it work?", ask "Does it behave according to its true nature?"

2. **Test Properties, Not Just Functions**: Focus on testing invariants, identity, authority boundaries, and behavioral consistency.

3. **Explore Edge Cases as Boundary Tests**: Edge cases aren't just technical corner cases—they're philosophical boundary tests that explore the limits of your conceptual model.

4. **Use Tests to Document Intent**: Tests should capture not just what the code does but why it does it that way.

5. **Test at the Right Level of Abstraction**: Some tests should verify technical details, while others should verify conceptual alignment with the domain.

By approaching testing as a philosophical inquiry, we not only verify functionality but also ensure that our code accurately reflects the profound conceptual models of the domains we're modeling.

# Appendix: Applying Philosophy to a Movie Ticketing System

## A.1: Domain Model with Class Impersonation

### A.1.1 Movie Entity

From the perspective of class impersonation, we ask: "If I were a Movie, what would define my identity, what relationships would I have, and how would I behave?"

```java
/**
 * Represents a Movie in the cinema system.
 * 
 * As a Movie, my identity consists of my title, release date, and duration.
 * These attributes are immutable because they define what movie I am.
 * 
 * As a Movie, I own my cast and crew lists. These collections are part of
 * what makes me the specific movie that I am, though they may be amended
 * with additional information over time.
 * 
 * As a Movie, I know my genres and can answer questions about my content
 * and audience suitability.
 */
public final class Movie {
    private final UUID id;
    private final String title; // Immutable - defines identity
    private final int durationMinutes; // Immutable
    private final LocalDate releaseDate; // Immutable
    private final Set<MovieGenre> genres; // Immutable set of enum values
    private final String synopsis;
    private final Set<CastMember> cast; // Immutable collection
    private final Set<CrewMember> crew; // Immutable collection
    
    // Constructor with validation
    public Movie(String title, int durationMinutes, LocalDate releaseDate, 
                 Set<MovieGenre> genres, String synopsis, 
                 Set<CastMember> cast, Set<CrewMember> crew) {
        this.id = UUID.randomUUID();
        this.title = Objects.requireNonNull(title, "Title cannot be null");
        
        if (durationMinutes <= 0) {
            throw new IllegalArgumentException("Duration must be positive");
        }
        this.durationMinutes = durationMinutes;
        
        this.releaseDate = Objects.requireNonNull(releaseDate, "Release date cannot be null");
        
        // Defensive copy of collections
        this.genres = Collections.unmodifiableSet(new HashSet<>(
            Objects.requireNonNull(genres, "Genres cannot be null")));
        
        this.synopsis = synopsis; // Can be null
        
        this.cast = Collections.unmodifiableSet(new HashSet<>(
            Objects.requireNonNull(cast, "Cast cannot be null")));
            
        this.crew = Collections.unmodifiableSet(new HashSet<>(
            Objects.requireNonNull(crew, "Crew cannot be null")));
    }
    
    // No setters for identity attributes
    
    // Getters with appropriate access control
    public UUID getId() {
        return id;
    }
    
    public String getTitle() {
        return title;
    }
    
    public int getDurationMinutes() {
        return durationMinutes;
    }
    
    public LocalDate getReleaseDate() {
        return releaseDate;
    }
    
    public Set<MovieGenre> getGenres() {
        return genres; // Already immutable
    }
    
    public String getSynopsis() {
        return synopsis;
    }
    
    public Set<CastMember> getCast() {
        return cast; // Already immutable
    }
    
    public Set<CrewMember> getCrew() {
        return crew; // Already immutable
    }
    
    // Domain methods
    public boolean isOfGenre(MovieGenre genre) {
        return genres.contains(genre);
    }
    
    public boolean isSuitableForChildren() {
        return !genres.contains(MovieGenre.HORROR) && 
               !genres.contains(MovieGenre.THRILLER);
    }
    
    public boolean hasCastMember(Person person) {
        return cast.stream()
            .anyMatch(member -> member.getPerson().equals(person));
    }
    
    public boolean hasDirector(Person person) {
        return crew.stream()
            .anyMatch(member -> member.getRole() == CrewRole.DIRECTOR && 
                     member.getPerson().equals(person));
    }
    
    // Object methods implementation
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Movie movie = (Movie) o;
        
        return title.equals(movie.title) && 
               releaseDate.equals(movie.releaseDate);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(title, releaseDate);
    }
    
    @Override
    public String toString() {
        return String.format("Movie: %s (%s)", title, releaseDate.getYear());
    }
}
```

This Movie class reflects deep philosophical thinking about what constitutes a movie's identity (title and release date), what relationships are essential (cast and crew), and what behaviors are appropriate (checking genres, checking for cast members). The immutability of core identity attributes and the use of enum types for genres demonstrate semantic type selection.

### A.1.2 Person Entity

From the perspective of class impersonation: "As a Person, what defines my identity, what information should I control access to, and what relationships might I have?"

```java
/**
 * Represents a Person in the movie domain.
 * 
 * As a Person, my name and date of birth define my identity and cannot be changed.
 * As a Person, my gender is an intrinsic property represented as an enum, not a string.
 * As a Person, I control access to my remuneration information, sharing it only
 * with authorized parties like my agent or tax authorities.
 */
public class Person {
    private final UUID id;
    private final String firstName; // Immutable
    private final String lastName; // Immutable
    private final LocalDate dateOfBirth; // Immutable
    private final Gender gender; // Enum type, not String
    private final BigDecimal remuneration; // Private with controlled access
    private ContactInformation contactInfo; // Controlled access
    
    // Constructor with validation
    public Person(String firstName, String lastName, LocalDate dateOfBirth, Gender gender) {
        this(firstName, lastName, dateOfBirth, gender, null);
    }
    
    public Person(String firstName, String lastName, LocalDate dateOfBirth, 
                  Gender gender, BigDecimal remuneration) {
        this.id = UUID.randomUUID();
        this.firstName = Objects.requireNonNull(firstName, "First name cannot be null");
        this.lastName = Objects.requireNonNull(lastName, "Last name cannot be null");
        this.dateOfBirth = Objects.requireNonNull(dateOfBirth, "Date of birth cannot be null");
        this.gender = Objects.requireNonNull(gender, "Gender cannot be null");
        this.remuneration = remuneration; // Can be null
    }
    
    // No setter for name - "My name is my identity"
    
    // Getters for identity attributes
    public UUID getId() {
        return id;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public String getFullName() {
        return firstName + " " + lastName;
    }
    
    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }
    
    public Gender getGender() {
        return gender;
    }
    
    // Controlled access to remuneration
    public BigDecimal getRemunerationForAgent(Agent agent) {
        if (this.isRepresentedBy(agent)) {
            return this.remuneration;
        }
        throw new UnauthorizedAccessException("You are not my agent");
    }
    
    public BigDecimal getRemunerationForTaxAuthority(TaxAuthority authority) {
        if (authority.hasJurisdictionOver(this)) {
            return this.remuneration;
        }
        throw new UnauthorizedAccessException("You have no jurisdiction over me");
    }
    
    // No public getter for remuneration
    
    // Controlled access to contact information
    public void updateContactInformation(ContactInformation contactInfo) {
        this.contactInfo = Objects.requireNonNull(contactInfo, "Contact info cannot be null");
    }
    
    public ContactInformation getContactInfoFor(Entity requestor) {
        if (isAuthorizedFor(requestor, AccessLevel.CONTACT_INFO)) {
            return contactInfo == null ? null : new ContactInformation(contactInfo); // Return defensive copy
        }
        throw new UnauthorizedAccessException("Not authorized to access contact information");
    }
    
    // Helper methods
    private boolean isRepresentedBy(Agent agent) {
        // Implementation
        return agent != null && agent.representsClient(this);
    }
    
    private boolean isAuthorizedFor(Entity requestor, AccessLevel level) {
        // Implementation based on relationship and access level
        return requestor != null && (requestor instanceof Agent && isRepresentedBy((Agent) requestor));
    }
    
    // Object methods implementation
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Person person = (Person) o;
        
        return firstName.equals(person.firstName) && 
               lastName.equals(person.lastName) && 
               dateOfBirth.equals(person.dateOfBirth);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(firstName, lastName, dateOfBirth);
    }
    
    @Override
    public String toString() {
        return String.format("%s %s", firstName, lastName);
    }
}
```

This Person class demonstrates true encapsulation by controlling access to sensitive information based on the authority of the requestor. It also maintains immutable core identity (name, birth date) while allowing mutable attributes like contact information to be updated.

### A.1.3 Theatre and Seat Entities

From the class impersonation perspective: "As a Theatre, what is my relationship to screens and seats? As a Seat, how do I manage my status transitions?"

```java
/**
 * Represents a Theatre in the cinema system.
 * 
 * As a Theatre, my name and location define my identity and cannot be changed.
 * As a Theatre, I consist of multiple screens, which are part of my physical structure.
 * As a Theatre, I define what seat types exist in my space through my own type registry.
 */
public final class Theatre {
    private final UUID id;
    private final String name; // Immutable
    private final Address location; // Immutable value object
    private final Set<Screen> screens; // Immutable collection
    private final SeatTypeRegistry seatTypes; // Theatre-specific seat types
    
    // Constructor with validation
    public Theatre(String name, Address location, Set<Screen> screens) {
        this.id = UUID.randomUUID();
        this.name = Objects.requireNonNull(name, "Name cannot be null");
        this.location = Objects.requireNonNull(location, "Location cannot be null");
        
        // Defensive copy
        this.screens = Collections.unmodifiableSet(new HashSet<>(
            Objects.requireNonNull(screens, "Screens cannot be null")));
            
        this.seatTypes = new SeatTypeRegistry();
        initializeDefaultSeatTypes();
    }
    
    // Theatre defines its own seat types
    private void initializeDefaultSeatTypes() {
        seatTypes.registerType("STD", "Standard", new BigDecimal("1.0"));
        seatTypes.registerType("PRM", "Premium", new BigDecimal("1.5"));
        seatTypes.registerType("VIP", "VIP", new BigDecimal("2.0"));
    }
    
    // No setters for identity attributes
    
    // Getters
    public UUID getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }
    
    public Address getLocation() {
        return location;
    }
    
    public Set<Screen> getScreens() {
        return screens; // Already immutable
    }
    
    // Access to seat type registry
    public SeatType getSeatType(String code) {
        return seatTypes.getType(code);
    }
    
    public void registerSeatType(String code, String name, BigDecimal priceMultiplier) {
        seatTypes.registerType(code, name, priceMultiplier);
    }
    
    // Domain methods
    public Optional<Screen> findScreenByName(String screenName) {
        return screens.stream()
            .filter(screen -> screen.getName().equals(screenName))
            .findFirst();
    }
    
    // Object methods implementation
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Theatre theatre = (Theatre) o;
        
        return name.equals(theatre.name) && 
               location.equals(theatre.location);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(name, location);
    }
    
    @Override
    public String toString() {
        return String.format("Theatre: %s at %s", name, location);
    }
}

/**
 * Represents a Seat in a theatre screen.
 * 
 * As a Seat, my row, number, and type define my physical identity and cannot be changed.
 * As a Seat, my status can change, but only through valid transitions.
 * As a Seat, I protect my state during concurrent operations through thread safety.
 */
public final class Seat {
    private final char row; // Immutable
    private final int seatNumber; // Immutable
    private final SeatType type; // Immutable
    private SeatStatus status; // Mutable with controlled transitions
    
    // Constructor with validation
    public Seat(char row, int seatNumber, SeatType type) {
        if (!Character.isLetter(row)) {
            throw new IllegalArgumentException("Row must be a letter");
        }
        this.row = Character.toUpperCase(row);
        
        if (seatNumber <= 0) {
            throw new IllegalArgumentException("Seat number must be positive");
        }
        this.seatNumber = seatNumber;
        
        this.type = Objects.requireNonNull(type, "Type cannot be null");
        this.status = SeatStatus.AVAILABLE;
    }
    
    // No setters for immutable properties
    
    // Getters
    public char getRow() {
        return row;
    }
    
    public int getSeatNumber() {
        return seatNumber;
    }
    
    public SeatType getType() {
        return type;
    }
    
    public SeatStatus getStatus() {
        return status;
    }
    
    // Thread-safe state transitions
    public synchronized boolean reserve() {
        if (status != SeatStatus.AVAILABLE) {
            return false;
        }
        status = SeatStatus.RESERVED;
        return true;
    }
    
    public synchronized boolean book() {
        if (status != SeatStatus.RESERVED) {
            return false;
        }
        status = SeatStatus.BOOKED;
        return true;
    }
    
    public synchronized boolean release() {
        if (status != SeatStatus.RESERVED) {
            return false;
        }
        status = SeatStatus.AVAILABLE;
        return true;
    }
    
    public synchronized boolean block() {
        if (status == SeatStatus.RESERVED || status == SeatStatus.BOOKED) {
            return false;
        }
        status = SeatStatus.BLOCKED_FOR_MAINTENANCE;
        return true;
    }
    
    public synchronized boolean unblock() {
        if (status != SeatStatus.BLOCKED_FOR_MAINTENANCE) {
            return false;
        }
        status = SeatStatus.AVAILABLE;
        return true;
    }
    
    // Domain methods
    public String getDisplayName() {
        return String.format("%c%d", row, seatNumber);
    }
    
    // Object methods implementation
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Seat seat = (Seat) o;
        
        return row == seat.row && 
               seatNumber == seat.seatNumber && 
               type.equals(seat.type);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(row, seatNumber, type);
    }
    
    @Override
    public String toString() {
        return String.format("Seat %c%d (%s)", row, seatNumber, status);
    }
}
```

These classes demonstrate several philosophical principles:

1. The Theatre class maintains immutable identity (name, location) and defines its own seat types through a domain registry.

2. The Seat class has immutable physical identity (row, number, type) but allows controlled state transitions through thread-safe methods.

3. Both classes use semantic type selection, with SeatType coming from a domain-specific registry and SeatStatus represented as an enum.

### A.1.4 ShowTime and Booking Entities

From the class impersonation perspective: "As a ShowTime, how do I manage my seats? As a Booking, how do I control my state transitions?"

```java
/**
 * Represents a ShowTime - a specific screening of a movie at a specific time and screen.
 * 
 * As a ShowTime, my movie, screen, and start time define my identity and cannot be changed.
 * As a ShowTime, I control the booking of my seats and maintain their status.
 * As a ShowTime, I ensure thread safety for concurrent seat operations.
 */
public final class ShowTime {
    private final UUID id;
    private final Movie movie; // Immutable reference
    private final Screen screen; // Immutable reference
    private final LocalDateTime startTime; // Immutable
    private final Map<SeatCoordinate, SeatStatus> seatStatusMap; // Mutable with controlled access
    
    // Constructor with validation
    public ShowTime(Movie movie, Screen screen, LocalDateTime startTime) {
        this.id = UUID.randomUUID();
        this.movie = Objects.requireNonNull(movie, "Movie cannot be null");
        this.screen = Objects.requireNonNull(screen, "Screen cannot be null");
        this.startTime = Objects.requireNonNull(startTime, "Start time cannot be null");
        
        // Initialize all seats as available
        this.seatStatusMap = new ConcurrentHashMap<>();
        initializeSeatStatus();
    }
    
    private void initializeSeatStatus() {
        for (Seat seat : screen.getSeatLayout().getSeats()) {
            seatStatusMap.put(
                new SeatCoordinate(seat.getRow(), seat.getSeatNumber()),
                SeatStatus.AVAILABLE
            );
        }
    }
    
    // No setters for immutable properties
    
    // Getters
    public UUID getId() {
        return id;
    }
    
    public Movie getMovie() {
        return movie;
    }
    
    public Screen getScreen() {
        return screen;
    }
    
    public LocalDateTime getStartTime() {
        return startTime;
    }
    
    public LocalDateTime getEndTime() {
        return startTime.plusMinutes(movie.getDurationMinutes());
    }
    
    // Seat status operations
    public SeatStatus getSeatStatus(SeatCoordinate coordinate) {
        validateSeatCoordinate(coordinate);
        return seatStatusMap.get(coordinate);
    }
    
    public synchronized boolean reserveSeat(SeatCoordinate coordinate) {
        validateSeatCoordinate(coordinate);
        
        SeatStatus currentStatus = seatStatusMap.get(coordinate);
        if (currentStatus != SeatStatus.AVAILABLE) {
            return false;
        }
        
        seatStatusMap.put(coordinate, SeatStatus.RESERVED);
        return true;
    }
    
    public synchronized boolean bookSeat(SeatCoordinate coordinate) {
        validateSeatCoordinate(coordinate);
        
        SeatStatus currentStatus = seatStatusMap.get(coordinate);
        if (currentStatus != SeatStatus.RESERVED) {
            return false;
        }
        
        seatStatusMap.put(coordinate, SeatStatus.BOOKED);
        return true;
    }
    
    public synchronized boolean releaseSeat(SeatCoordinate coordinate) {
        validateSeatCoordinate(coordinate);
        
        SeatStatus currentStatus = seatStatusMap.get(coordinate);
        if (currentStatus != SeatStatus.RESERVED) {
            return false;
        }
        
        seatStatusMap.put(coordinate, SeatStatus.AVAILABLE);
        return true;
    }
    
    // Helper method to validate seat coordinates
    private void validateSeatCoordinate(SeatCoordinate coordinate) {
        Objects.requireNonNull(coordinate, "Seat coordinate cannot be null");
        
        if (!seatStatusMap.containsKey(coordinate)) {
            throw new IllegalArgumentException("Invalid seat coordinate: " + coordinate);
        }
    }
    
    // Domain methods
    public boolean areAllSeatsAvailable(Set<SeatCoordinate> coordinates) {
        for (SeatCoordinate coordinate : coordinates) {
            if (getSeatStatus(coordinate) != SeatStatus.AVAILABLE) {
                return false;
            }
        }
        return true;
    }
    
    public synchronized boolean reserveSeats(Set<SeatCoordinate> coordinates) {
        // First check if all seats are available
        if (!areAllSeatsAvailable(coordinates)) {
            return false;
        }
        
        // Then reserve all seats
        for (SeatCoordinate coordinate : coordinates) {
            seatStatusMap.put(coordinate, SeatStatus.RESERVED);
        }
        
        return true;
    }
    
    public Map<SeatCoordinate, SeatStatus> getSeatStatusSnapshot() {
        return new HashMap<>(seatStatusMap);
    }
    
    // Object methods implementation
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        ShowTime showTime = (ShowTime) o;
        
        return movie.equals(showTime.movie) && 
               screen.equals(showTime.screen) && 
               startTime.equals(showTime.startTime);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(movie, screen, startTime);
    }
    
    @Override
    public String toString() {
        return String.format("%s at %s on %s", 
            movie.getTitle(), 
            screen.getName(), 
            startTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")));
    }
}

/**
 * Represents a Booking for seats at a specific show time.
 * 
 * As a Booking, my show time, seats, and user define my core identity.
 * As a Booking, my status changes through a well-defined workflow.
 * As a Booking, I know when I was created and can enforce timeout rules.
 */
public final class Booking {
    private final UUID id;
    private final ShowTime showTime; // Immutable reference
    private final Set<SeatCoordinate> seats; // Immutable after creation
    private final User user; // Immutable reference
    private final LocalDateTime bookingTime; // Immutable
    private BookingStatus status; // Mutable with controlled transitions
    
    // Constructor with validation
    public Booking(ShowTime showTime, Set<SeatCoordinate> seats, User user) {
        this.id = UUID.randomUUID();
        this.showTime = Objects.requireNonNull(showTime, "Show time cannot be null");
        
        // Defensive copy
        this.seats = Collections.unmodifiableSet(new HashSet<>(
            Objects.requireNonNull(seats, "Seats cannot be null")));
            
        if (seats.isEmpty()) {
            throw new IllegalArgumentException("Seats cannot be empty");
        }
        
        this.user = Objects.requireNonNull(user, "User cannot be null");
        this.bookingTime = LocalDateTime.now();
        this.status = BookingStatus.INITIATED;
    }
    
    // No setters for immutable properties
    
    // Getters
    public UUID getId() {
        return id;
    }
    
    public ShowTime getShowTime() {
        return showTime;
    }
    
    public Set<SeatCoordinate> getSeats() {
        return seats; // Already immutable
    }
    
    public User getUser() {
        return user;
    }
    
    public LocalDateTime getBookingTime() {
        return bookingTime;
    }
    
    public BookingStatus getStatus() {
        return status;
    }
    
    // Controlled state transitions
    public boolean markPaymentPending() {
        if (status != BookingStatus.INITIATED) {
            return false;
        }
        status = BookingStatus.PAYMENT_PENDING;
        return true;
    }
    
    public boolean confirm() {
        if (status != BookingStatus.PAYMENT_PENDING) {
            return false;
        }
        status = BookingStatus.CONFIRMED;
        return true;
    }
    
    public boolean cancel() {
        if (status == BookingStatus.COMPLETED || status == BookingStatus.CANCELLED) {
            return false;
        }
        status = BookingStatus.CANCELLED;
        return true;
    }
    
    public boolean complete() {
        if (status != BookingStatus.CONFIRMED) {
            return false;
        }
        status = BookingStatus.COMPLETED;
        return true;
    }
    
    // Domain methods
    public boolean isExpired(int expirationMinutes) {
        return status == BookingStatus.INITIATED || status == BookingStatus.PAYMENT_PENDING ? 
               bookingTime.plusMinutes(expirationMinutes).isBefore(LocalDateTime.now()) :
               false;
    }
    
    public int getNumberOfSeats() {
        return seats.size();
    }
    
    // Object methods implementation
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Booking booking = (Booking) o;
        
        return id.equals(booking.id);
    }
    
    @Override
    public int hashCode() {
        return id.hashCode();
    }
    
    @Override
    public String toString() {
        return String.format("Booking %s for %s by %s (%s)", 
            id.toString().substring(0, 8), 
            showTime, 
            user.getUsername(), 
            status);
    }
}
```

These classes demonstrate several philosophical principles:

1. Both classes have immutable core identity (movie, screen, start time for ShowTime; show time, seats, user for Booking) and mutable state with controlled transitions.

2. ShowTime implements thread-safe seat reservation to handle concurrent booking attempts, demonstrating proper authority control even under concurrency.

3. Booking implements a well-defined state machine for its status transitions, reflecting real-world booking workflows.

## A.2: Philosophical System Architecture

### A.2.1 Layered Architecture with True Separation of Concerns

```java
/**
 * Presentation Layer - Command Line Interface (Phase 1)
 * Enforces domain constraints at the input level.
 */
public class MoviePresentation {
    private final MovieService movieService;
    
    // Constructor with dependency injection
    public MoviePresentation(MovieService movieService) {
        this.movieService = Objects.requireNonNull(movieService);
    }
    
    public void displayGenreSelectionMenu() {
        System.out.println("Select movie genre:");
        
        // Present enum values in user-friendly format
        MovieGenre[] genres = MovieGenre.values();
        for (int i = 0; i < genres.length; i++) {
            System.out.printf("%d. %s%n", i + 1, formatEnumForDisplay(genres[i]));
        }
    }
    
    // Convert user input to proper enum
    public MovieGenre getSelectedGenre(int selection) {
        MovieGenre[] genres = MovieGenre.values();
        if (selection < 1 || selection > genres.length) {
            throw new IllegalArgumentException("Invalid genre selection");
        }
        return genres[selection - 1];
    }
    
    // Format enum for display
    private String formatEnumForDisplay(MovieGenre genre) {
        // Convert SCIENCE_FICTION to "Science Fiction"
        return Arrays.stream(genre.name().split("_"))
            .map(word -> word.charAt(0) + word.substring(1).toLowerCase())
            .collect(Collectors.joining(" "));
    }
    
    // Other presentation methods
}

/**
 * Service Layer - Natural Authority Boundaries
 * Each service controls access to its domain objects and enforces domain rules.
 */
public interface BookingService {
    // Atomic operation for seat reservation
    ReservationResult reserveSeats(ShowTime showTime, Set<SeatCoordinate> seats, User user);
    
    // Controlled state transition
    boolean confirmBooking(UUID bookingId, PaymentDetails paymentDetails);
    
    // Authority-based cancellation
    boolean cancelBooking(UUID bookingId, User user);
}

```java
public class BookingServiceImpl implements BookingService {
    private final BookingRepository bookingRepository;
    private final ShowTimeRepository showTimeRepository;
    private final PaymentGateway paymentGateway;
    
    // Constructor with dependency injection
    public BookingServiceImpl(BookingRepository bookingRepository, 
                             ShowTimeRepository showTimeRepository,
                             PaymentGateway paymentGateway) {
        this.bookingRepository = Objects.requireNonNull(bookingRepository);
        this.showTimeRepository = Objects.requireNonNull(showTimeRepository);
        this.paymentGateway = Objects.requireNonNull(paymentGateway);
    }
    
    @Override
    public synchronized ReservationResult reserveSeats(ShowTime showTime, Set<SeatCoordinate> seats, User user) {
        // Check seat availability atomically
        if (!showTime.areAllSeatsAvailable(seats)) {
            return ReservationResult.SEATS_NOT_AVAILABLE;
        }
        
        // Validate show time is in the future
        if (showTime.getStartTime().isBefore(LocalDateTime.now())) {
            return ReservationResult.SHOW_TIME_PASSED;
        }
        
        // Reserve seats atomically
        boolean reserved = showTime.reserveSeats(seats);
        if (!reserved) {
            return ReservationResult.RESERVATION_FAILED;
        }
        
        // Create booking
        Booking booking = new Booking(showTime, seats, user);
        booking.markPaymentPending();
        
        // Save updated entities
        showTimeRepository.save(showTime);
        bookingRepository.save(booking);
        
        return new ReservationResult(ReservationStatus.SUCCESS, booking.getId());
    }
    
    @Override
    public boolean confirmBooking(UUID bookingId, PaymentDetails paymentDetails) {
        // Retrieve booking
        Optional<Booking> optionalBooking = bookingRepository.findById(bookingId);
        if (optionalBooking.isEmpty()) {
            return false;
        }
        
        Booking booking = optionalBooking.get();
        
        // Check if booking is in payment pending state
        if (booking.getStatus() != BookingStatus.PAYMENT_PENDING) {
            return false;
        }
        
        // Process payment
        PaymentResult paymentResult = paymentGateway.processPayment(paymentDetails, calculateTotalPrice(booking));
        if (!paymentResult.isSuccessful()) {
            return false;
        }
        
        // Update booking status
        booking.confirm();
        bookingRepository.save(booking);
        
        // Update seats from reserved to booked
        ShowTime showTime = booking.getShowTime();
        for (SeatCoordinate seat : booking.getSeats()) {
            showTime.bookSeat(seat);
        }
        showTimeRepository.save(showTime);
        
        return true;
    }
    
    @Override
    public boolean cancelBooking(UUID bookingId, User user) {
        // Retrieve booking
        Optional<Booking> optionalBooking = bookingRepository.findById(bookingId);
        if (optionalBooking.isEmpty()) {
            return false;
        }
        
        Booking booking = optionalBooking.get();
        
        // Only the booking owner can cancel
        if (!booking.getUser().equals(user)) {
            throw new UnauthorizedOperationException("Only the booking owner can cancel");
        }
        
        // Check if booking can be cancelled
        if (booking.getStatus() == BookingStatus.COMPLETED || 
            booking.getStatus() == BookingStatus.CANCELLED) {
            return false;
        }
        
        // Update booking status
        booking.cancel();
        bookingRepository.save(booking);
        
        // Release seats
        ShowTime showTime = booking.getShowTime();
        for (SeatCoordinate seat : booking.getSeats()) {
            showTime.releaseSeat(seat);
        }
        showTimeRepository.save(showTime);
        
        return true;
    }
    
    // Helper methods
    private Money calculateTotalPrice(Booking booking) {
        // Implementation of pricing calculation
        // This would use information from both the show time and the seats
        return new Money(BigDecimal.TEN, Currency.getInstance("USD")); // Simplified
    }
}

/**
 * Repository Layer - Type-Safe Data Access
 * Repositories work with domain objects, not DTOs, and maintain type safety.
 */
public interface MovieRepository {
    Optional<Movie> findById(UUID id);
    List<Movie> findAll();
    List<Movie> findByGenre(MovieGenre genre);
    List<Movie> findByCastMember(Person person);
    Movie save(Movie movie);
}

public class InMemoryMovieRepository implements MovieRepository {
    private final Map<UUID, Movie> movies = new ConcurrentHashMap<>();
    
    @Override
    public Optional<Movie> findById(UUID id) {
        return Optional.ofNullable(movies.get(id));
    }
    
    @Override
    public List<Movie> findAll() {
        return new ArrayList<>(movies.values());
    }
    
    @Override
    public List<Movie> findByGenre(MovieGenre genre) {
        return movies.values().stream()
            .filter(movie -> movie.getGenres().contains(genre))
            .collect(Collectors.toList());
    }
    
    @Override
    public List<Movie> findByCastMember(Person person) {
        return movies.values().stream()
            .filter(movie -> movie.hasCastMember(person))
            .collect(Collectors.toList());
    }
    
    @Override
    public Movie save(Movie movie) {
        movies.put(movie.getId(), movie);
        return movie;
    }
}
```

This layered architecture demonstrates several philosophical principles:

1. The presentation layer enforces domain constraints at the input level, ensuring that only valid data enters the system. For example, it converts raw input selections to proper enum values.

2. The service layer represents natural authority boundaries, with each service controlling access to its domain and enforcing domain rules. The BookingService has authority over the booking process and seat reservation.

3. The repository layer provides type-safe data access, working with domain objects and maintaining the semantic integrity of the model.

### A.2.2 SOLID Principles Implementation

```java
/**
 * Single Responsibility Principle
 * Each class has one reason to change.
 */
// Payment processing is separate from booking management
public interface PaymentGateway {
    PaymentResult processPayment(PaymentDetails details, Money amount);
}

public class StripePaymentGateway implements PaymentGateway {
    @Override
    public PaymentResult processPayment(PaymentDetails details, Money amount) {
        // Implementation of Stripe-specific payment processing
        return new PaymentResult(true, "Payment successful");
    }
}

/**
 * Open/Closed Principle
 * Extensions without modification.
 */
// Base pricing strategy that can be extended
public abstract class PricingStrategy {
    // Template method for price calculation
    public final Money calculatePrice(Seat seat, ShowTime showTime, User user) {
        Money basePrice = getBasePrice(showTime);
        BigDecimal seatMultiplier = getSeatMultiplier(seat);
        BigDecimal timeMultiplier = getTimeMultiplier(showTime);
        BigDecimal userDiscount = getUserDiscount(user);
        
        return basePrice
            .multiply(seatMultiplier)
            .multiply(timeMultiplier)
            .multiply(BigDecimal.ONE.subtract(userDiscount));
    }
    
    // Subclasses override these methods
    protected abstract Money getBasePrice(ShowTime showTime);
    protected abstract BigDecimal getSeatMultiplier(Seat seat);
    protected abstract BigDecimal getTimeMultiplier(ShowTime showTime);
    protected abstract BigDecimal getUserDiscount(User user);
}

// Can add new pricing strategies without modifying existing code
public class StandardPricingStrategy extends PricingStrategy {
    @Override
    protected Money getBasePrice(ShowTime showTime) {
        return new Money(BigDecimal.valueOf(10), Currency.getInstance("USD"));
    }
    
    @Override
    protected BigDecimal getSeatMultiplier(Seat seat) {
        return seat.getType().getPriceMultiplier();
    }
    
    @Override
    protected BigDecimal getTimeMultiplier(ShowTime showTime) {
        // Weekend shows cost more
        LocalDateTime dateTime = showTime.getStartTime();
        DayOfWeek day = dateTime.getDayOfWeek();
        
        return (day == DayOfWeek.FRIDAY || day == DayOfWeek.SATURDAY) ?
            BigDecimal.valueOf(1.2) : BigDecimal.ONE;
    }
    
    @Override
    protected BigDecimal getUserDiscount(User user) {
        return user.isPremium() ? BigDecimal.valueOf(0.1) : BigDecimal.ZERO;
    }
}

/**
 * Liskov Substitution Principle
 * Subtypes preserve behavior of base types.
 */
public abstract class User {
    private final UUID id;
    private final String username;
    
    // Constructor and getters
    
    // All users can book tickets
    public abstract Booking bookTickets(ShowTime showTime, Set<SeatCoordinate> seats);
}

public class RegularUser extends User {
    // Regular user implementation
    
    @Override
    public Booking bookTickets(ShowTime showTime, Set<SeatCoordinate> seats) {
        // Regular booking logic
        return new Booking(showTime, seats, this);
    }
}

public class PremiumUser extends User {
    private final PremiumLevel level;
    
    // Constructor and getters
    
    @Override
    public Booking bookTickets(ShowTime showTime, Set<SeatCoordinate> seats) {
        // Premium booking with additional benefits
        Booking booking = new Booking(showTime, seats, this);
        
        // Premium users get automatic seat upgrade if available
        upgradeSeatIfPossible(booking);
        
        return booking;
    }
    
    private void upgradeSeatIfPossible(Booking booking) {
        // Implementation of premium seat upgrade logic
    }
}

/**
 * Interface Segregation Principle
 * Small, focused interfaces.
 */
// Booking operations interface
public interface BookingOperations {
    ReservationResult reserveSeats(ShowTime showTime, Set<SeatCoordinate> seats, User user);
    boolean confirmBooking(UUID bookingId, PaymentDetails paymentDetails);
    boolean cancelBooking(UUID bookingId, User user);
}

// Booking queries interface
public interface BookingQueries {
    Optional<Booking> findById(UUID id);
    List<Booking> findByUser(User user);
    List<Booking> findByShowTime(ShowTime showTime);
}

// Booking service implements both
public class BookingService implements BookingOperations, BookingQueries {
    // Implementation of all interface methods
}

// Client that only needs queries
public class BookingHistoryViewer {
    private final BookingQueries bookingQueries;
    
    // Constructor with dependency injection
    public BookingHistoryViewer(BookingQueries bookingQueries) {
        this.bookingQueries = Objects.requireNonNull(bookingQueries);
    }
    
    // Only depends on query methods
    public List<Booking> getBookingHistoryForUser(User user) {
        return bookingQueries.findByUser(user);
    }
}

/**
 * Dependency Inversion Principle
 * High-level modules depend on abstractions.
 */
// Abstract repository
public interface ShowTimeRepository {
    Optional<ShowTime> findById(UUID id);
    List<ShowTime> findByMovie(Movie movie);
    List<ShowTime> findByTheatre(Theatre theatre);
    ShowTime save(ShowTime showTime);
}

// High-level service depends on abstraction
public class ShowTimeService {
    private final ShowTimeRepository showTimeRepository;
    
    // Constructor injection
    public ShowTimeService(ShowTimeRepository showTimeRepository) {
        this.showTimeRepository = Objects.requireNonNull(showTimeRepository);
    }
    
    // Methods that use the repository
    public List<ShowTime> findShowTimesForMovie(Movie movie) {
        return showTimeRepository.findByMovie(movie);
    }
}

// Multiple implementations possible
public class InMemoryShowTimeRepository implements ShowTimeRepository {
    // In-memory implementation
}

public class DatabaseShowTimeRepository implements ShowTimeRepository {
    // Database implementation for phase 2
}
```

This implementation of SOLID principles demonstrates several philosophical aspects:

1. Single Responsibility Principle: Each class has a clear authority and purpose, such as payment processing separated from booking management.

2. Open/Closed Principle: The PricingStrategy base class allows extension without modification, enabling evolution through addition rather than changing existing code.

3. Liskov Substitution Principle: The PremiumUser subclass preserves the behavior of the User base class while adding premium-specific enhancements, honoring the behavioral promises of its supertype.

4. Interface Segregation Principle: Interfaces like BookingOperations and BookingQueries are focused and specific, allowing clients to depend only on the methods they need.

5. Dependency Inversion Principle: High-level services depend on abstractions like repositories, not concrete implementations, respecting conceptual hierarchies.

## A.3: Implementation Guidelines

### A.3.1 Master Data Initialization

```java
/**
 * Movie Catalog Initialization
 * Creates predefined movies with proper genres, cast, and crew.
 */
public class MovieCatalogInitializer {
    private final MovieRepository movieRepository;
    private final PersonRepository personRepository;
    
    // Constructor with dependency injection
    public MovieCatalogInitializer(MovieRepository movieRepository, PersonRepository personRepository) {
        this.movieRepository = Objects.requireNonNull(movieRepository);
        this.personRepository = Objects.requireNonNull(personRepository);
    }
    
    // Initialize the movie catalog
    public void initialize() {
        // Create persons first
        Person director = new Person("Christopher", "Nolan", LocalDate.of(1970, 7, 30), Gender.MALE);
        Person actor1 = new Person("Leonardo", "DiCaprio", LocalDate.of(1974, 11, 11), Gender.MALE);
        Person actor2 = new Person("Ellen", "Page", LocalDate.of(1987, 2, 21), Gender.FEMALE);
        
        personRepository.save(director);
        personRepository.save(actor1);
        personRepository.save(actor2);
        
        // Create movie with cast and crew
        Set<MovieGenre> genres = Set.of(MovieGenre.SCIENCE_FICTION, MovieGenre.ACTION, MovieGenre.THRILLER);
        
        Set<CastMember> cast = new HashSet<>();
        cast.add(new CastMember(actor1, CastRole.LEAD_ACTOR, "Cobb"));
        cast.add(new CastMember(actor2, CastRole.SUPPORTING_ACTOR, "Ariadne"));
        
        Set<CrewMember> crew = new HashSet<>();
        crew.add(new CrewMember(director, CrewRole.DIRECTOR, ""));
        
        Movie movie = new Movie(
            "Inception", 
            148, 
            LocalDate.of(2010, 7, 16),
            genres,
            "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
            cast,
            crew
        );
        
        movieRepository.save(movie);
        
        // Create additional movies...
    }
}

/**
 * Theatre Setup
 * Creates theatres with custom seat types and proper seating layouts.
 */
public class TheatreInitializer {
    private final TheatreRepository theatreRepository;
    
    // Constructor with dependency injection
    public TheatreInitializer(TheatreRepository theatreRepository) {
        this.theatreRepository = Objects.requireNonNull(theatreRepository);
    }
    
    // Initialize theatres
    public void initialize() {
        // Create a theatre with custom seat types
        Theatre theatre = new Theatre(
            "CineStar Deluxe", 
            new Address("123 Cinema Blvd", "Movie City", "12345")
        );
        
        // Add custom seat types beyond the defaults
        theatre.registerSeatType("RCLN", "Recliner", new BigDecimal("2.5"));
        theatre.registerSeatType("LOVS", "Love Seat", new BigDecimal("2.2"));
        
        // Create screens with proper seating layouts
        Screen screen1 = createScreenWithLayout(theatre, "Screen 1", 10, 20);
        Screen screen2 = createScreenWithLayout(theatre, "Screen 2", 8, 15);
        
        Set<Screen> screens = Set.of(screen1, screen2);
        Theatre theatreWithScreens = new Theatre(
            theatre.getName(),
            theatre.getLocation(),
            screens
        );
        
        theatreRepository.save(theatreWithScreens);
        
        // Create additional theatres...
    }
    
    // Create a screen with a seating layout
    private Screen createScreenWithLayout(Theatre theatre, String name, int rows, int seatsPerRow) {
        SeatLayout layout = new SeatLayout();
        
        // Create seats with proper row letters and numbers
        for (int i = 0; i < rows; i++) {
            char rowLetter = (char)('A' + i);
            for (int j = 1; j <= seatsPerRow; j++) {
                // Assign different seat types based on position
                SeatType type;
                if (i < 2) {
                    type = theatre.getSeatType("PRM"); // Premium in front rows
                } else if (i >= rows - 2) {
                    type = theatre.getSeatType("RCLN"); // Recliners in back rows
                } else {
                    type = theatre.getSeatType("STD"); // Standard in middle
                }
                
                Seat seat = new Seat(rowLetter, j, type);
                layout.addSeat(seat);
            }
        }
        
        return new Screen(name, theatre, layout);
    }
}
```

These initializers demonstrate several philosophical principles:

1. They create a complete domain model with proper relationships and constraints, such as movies with their cast and crew, and theatres with their screens and seat layouts.

2. They use semantic types throughout, such as MovieGenre enums for genres and CastRole enums for cast roles.

3. They establish realistic seat layouts with different seat types in different areas of the theatre, reflecting real-world seating arrangements.

### A.3.2 Thread-Safe Collections and Operations

```java
/**
 * Show Time Manager
 * Manages thread-safe seat reservation and booking.
 */
public class ShowTimeManager {
    private final Map<UUID, ShowTime> showTimes = new ConcurrentHashMap<>();
    private final ShowTimeRepository showTimeRepository;
    
    // Constructor with dependency injection
    public ShowTimeManager(ShowTimeRepository showTimeRepository) {
        this.showTimeRepository = Objects.requireNonNull(showTimeRepository);
        
        // Load show times into local cache
        showTimeRepository.findAll().forEach(showTime -> 
            showTimes.put(showTime.getId(), showTime));
    }
    
    // Thread-safe seat reservation
    public synchronized ReservationResult reserveSeats(UUID showTimeId, Set<SeatCoordinate> seats, User user) {
        ShowTime showTime = showTimes.get(showTimeId);
        if (showTime == null) {
            return new ReservationResult(ReservationStatus.INVALID_SHOW_TIME, null);
        }
        
        // Check if all seats are available
        if (!showTime.areAllSeatsAvailable(seats)) {
            return new ReservationResult(ReservationStatus.SEATS_NOT_AVAILABLE, null);
        }
        
        // Reserve all seats atomically
        boolean reserved = showTime.reserveSeats(seats);
        if (!reserved) {
            return new ReservationResult(ReservationStatus.RESERVATION_FAILED, null);
        }
        
        // Create booking
        Booking booking = new Booking(showTime, seats, user);
        
        // Save changes
        showTimeRepository.save(showTime);
        
        return new ReservationResult(ReservationStatus.SUCCESS, booking.getId());
    }
    
    // Other thread-safe operations
}

/**
 * Booking Timeout Manager
 * Handles reservation expiration.
 */
public class BookingTimeoutManager {
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
    private final BookingRepository bookingRepository;
    private final ShowTimeRepository showTimeRepository;
    
    // Constructor with dependency injection
    public BookingTimeoutManager(BookingRepository bookingRepository, 
                               ShowTimeRepository showTimeRepository) {
        this.bookingRepository = Objects.requireNonNull(bookingRepository);
        this.showTimeRepository = Objects.requireNonNull(showTimeRepository);
    }
    
    // Schedule timeout for a reservation
    public void scheduleTimeout(Booking booking, int timeoutMinutes) {
        scheduler.schedule(() -> {
            // Check if booking is still in PAYMENT_PENDING state
            Optional<Booking> currentBooking = bookingRepository.findById(booking.getId());
            
            if (currentBooking.isPresent() && 
                currentBooking.get().getStatus() == BookingStatus.PAYMENT_PENDING) {
                
                // Get fresh copies of entities
                Booking bookingToExpire = currentBooking.get();
                ShowTime showTime = showTimeRepository.findById(
                    bookingToExpire.getShowTime().getId()).orElse(null);
                
                if (showTime != null) {
                    // Release seats
                    synchronized(this) {
                        for (SeatCoordinate seat : bookingToExpire.getSeats()) {
                            showTime.releaseSeat(seat);
                        }
                        
                        // Update status
                        bookingToExpire.cancel();
                        
                        // Save updated entities
                        showTimeRepository.save(showTime);
                        bookingRepository.save(bookingToExpire);
                    }
                }
            }
        }, timeoutMinutes, TimeUnit.MINUTES);
    }
    
    // Shutdown method for clean application termination
    public void shutdown() {
        scheduler.shutdown();
    }
}
```

These components demonstrate several concurrency principles:

1. The ShowTimeManager uses synchronized methods and a ConcurrentHashMap to ensure thread-safe seat reservation, preventing race conditions where two users might reserve the same seat.

2. The BookingTimeoutManager uses a ScheduledExecutorService for time-based operations and synchronization for thread safety when updating entities.

3. Both components retrieve fresh copies of entities before operating on them to avoid stale data issues in concurrent environments.

## A.4: Philosophical Testing Strategy

### A.4.1 Entity Behavior Tests

```java
/**
 * Tests that entities behave according to their real-world counterparts.
 */
public class MovieTests {
    @Test
    public void movieTitleCannotBeChanged() {
        // Arrange
        Movie movie = new Movie("The Godfather", 175, LocalDate.of(1972, 3, 24), 
                               Set.of(MovieGenre.DRAMA), "Epic crime drama...", 
                               Set.of(), Set.of());
        
        // Assert - verify no setter exists
        assertFalse(Arrays.stream(Movie.class.getMethods())
                        .anyMatch(method -> method.getName().equals("setTitle")));
    }
    
    @Test
    public void movieGenresAreImmutable() {
        // Arrange
        Set<MovieGenre> initialGenres = new HashSet<>();
        initialGenres.add(MovieGenre.DRAMA);
        
        Movie movie = new Movie("The Godfather", 175, LocalDate.of(1972, 3, 24), 
                               initialGenres, "Epic crime drama...", 
                               Set.of(), Set.of());
        
        // Act - try to modify the genres collection
        Set<MovieGenre> genres = movie.getGenres();
        
        // Assert - verify collection is immutable
        assertThrows(UnsupportedOperationException.class, () -> {
            genres.add(MovieGenre.CRIME);
        });
    }
}

public class SeatTests {
    @Test
    public void seatCannotBeBookedTwice() {
        // Arrange
        SeatType standardType = new SeatType("STD", "Standard", BigDecimal.ONE);
        Seat seat = new Seat('A', 1, standardType);
        
        // Act & Assert
        assertTrue(seat.reserve(), "First reservation should succeed");
        assertEquals(SeatStatus.RESERVED, seat.getStatus(), "Seat should be reserved");
        
        assertFalse(seat.reserve(), "Second reservation should fail");
        assertEquals(SeatStatus.RESERVED, seat.getStatus(), "Seat status should remain reserved");
    }
    
    @Test
    public void seatRowIsAlwaysUppercase() {
        // Arrange & Act
        SeatType standardType = new SeatType("STD", "Standard", BigDecimal.ONE);
        Seat seat = new Seat('a', 1, standardType); // Lowercase input
        
        // Assert
        assertEquals('A', seat.getRow(), "Row letter should be converted to uppercase");
    }
}
```

These tests demonstrate philosophical testing:

1. They verify that entities behave according to their real-world counterparts, such as seats that cannot be booked twice and movies with immutable titles.

2. They focus on conceptual integrity rather than just technical functionality, ensuring that the domain model accurately reflects reality.

### A.4.2 Information Access Tests

```java
/**
 * Tests that verify controlled information disclosure.
 */
public class PersonInformationAccessTests {
    @Test
    public void remunerationIsOnlyVisibleToAuthorizedParties() {
        // Arrange
        Person actor = new Person("John", "Doe", LocalDate.of(1980, 1, 1), 
                                Gender.MALE, new BigDecimal("1000000"));
        Agent authorizedAgent = new Agent("Jane", "Smith");
        Agent unauthorizedAgent = new Agent("Bob", "Johnson");
        
        // Establish relationship with authorized agent
        actor.setAgent(authorizedAgent);
        
        // Act & Assert
        assertEquals(new BigDecimal("1000000"), 
                    actor.getRemunerationForAgent(authorizedAgent),
                    "Authorized agent should be able to access remuneration");
        
        assertThrows(UnauthorizedAccessException.class, () -> {
            actor.getRemunerationForAgent(unauthorizedAgent);
        }, "Unauthorized agent should not be able to access remuneration");
    }
    
    @Test
    public void contactInformationHasControlledAccess() {
        // Arrange
        Person person = new Person("John", "Doe", LocalDate.of(1980, 1, 1), Gender.MALE);
        ContactInformation contactInfo = new ContactInformation(
            "john@example.com", "123-456-7890");
        person.updateContactInformation(contactInfo);
        
        Agent authorizedAgent = new Agent("Jane", "Smith");
        Marketer unauthorizedMarketer = new Marketer("Marketing Co.");
        
        // Establish relationship with authorized agent
        person.setAgent(authorizedAgent);
        
        // Act & Assert
        assertNotNull(person.getContactInfoFor(authorizedAgent),
                    "Authorized agent should be able to access contact information");
        
        assertThrows(UnauthorizedAccessException.class, () -> {
            person.getContactInfoFor(unauthorizedMarketer);
        }, "Unauthorized marketer should not be able to access contact information");
    }
}
```

These tests verify that information access is properly controlled based on authority relationships, reflecting real-world patterns of selective information disclosure.

### A.4.3 Concurrent Booking Tests

```java
/**
 * Tests that verify thread safety of booking operations.
 */
public class ConcurrentBookingTests {
    @Test
    public void concurrentSeatReservationMaintainsConsistency() throws InterruptedException {
        // Arrange
        ShowTime showTime = createShowTimeWithAvailableSeats();
        SeatCoordinate seat = new SeatCoordinate('A', 1);
        
        // Create countdown latch for synchronization
        CountDownLatch startLatch = new CountDownLatch(1);
        CountDownLatch finishLatch = new CountDownLatch(2);
        
        // Results for each thread
        AtomicBoolean result1 = new AtomicBoolean();
        AtomicBoolean result2 = new AtomicBoolean();
        
        // Act - Create two threads trying to book the same seat
        Thread thread1 = new Thread(() -> {
            try {
                startLatch.await(); // Wait for start signal
                result1.set(showTime.reserveSeat(seat));
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } finally {
                finishLatch.countDown();
            }
        });
        
        Thread thread2 = new Thread(() -> {
            try {
                startLatch.await(); // Wait for start signal
                result2.set(showTime.reserveSeat(seat));
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } finally {
                finishLatch.countDown();
            }
        });
        
        // Start threads
        thread1.start();
        thread2.start();
        startLatch.countDown(); // Signal threads to start
        finishLatch.await(); // Wait for both threads to finish
        
        // Assert
        assertTrue(result1.get() ^ result2.get(), 
                 "Only one thread should succeed in reserving the seat");
        assertEquals(SeatStatus.RESERVED, showTime.getSeatStatus(seat),
                    "Seat should be in reserved state");
    }
    
    private ShowTime createShowTimeWithAvailableSeats() {
        // Implementation to create a show time with available seats
        // This would include creating a movie, theatre, screen, and show time
        // with all seats initially available
        return new ShowTime(
            new Movie("Test Movie", 120, LocalDate.now(), 
                     Set.of(MovieGenre.ACTION), "Test synopsis", 
                     Set.of(), Set.of()),
            new Screen("Screen 1", 
                      new Theatre("Test Theatre", 
                                new Address("123 Test St", "Test City", "12345"),
                                Set.of()),
                      new SeatLayout()),
            LocalDateTime.now().plusDays(1)
        );
    }
}
```

This test verifies that the system maintains consistency under concurrent load, an important aspect of authority control in multi-user systems. It ensures that even when multiple users try to reserve the same seat simultaneously, only one succeeds and the seat's state remains consistent.

This comprehensive application of philosophical programming principles to the movie ticketing system demonstrates how these concepts translate into practical implementation. By focusing on entity identity, proper authority boundaries, semantic type selection, and domain-driven flexibility, we create a system that not only works correctly but also accurately reflects the real-world domain it models.


With this implementation, we can see how philosophical programming transforms a typical movie ticketing system into a rich domain model that respects the true nature of the entities involved, their relationships, and their behaviors. The resulting code is not just functional but conceptually coherent and aligned with reality.



# Embodying the Philosophical Mindset

Let me show you how code transforms when we live and breathe these philosophical principles instead of just applying them like another set of rules. In the code below, I've implemented a system that:
1. Tells a clear story at the method level
2. Truly embodies class impersonation
3. Respects single responsibility with a narrative flow
4. Embraces true encapsulation based on authority patterns

## The Narrative Booking Process

Let's revisit the booking process, but this time with a genuine narrative approach:

```java
/**
 * As a BookingCoordinator, I orchestrate the complex journey from seat selection 
 * to confirmed booking. I ensure each step in this journey proceeds properly,
 * but I delegate the actual work to specialists who know their domains.
 * 
 * My story unfolds in clear chapters - from validating the request, to reserving
 * seats, creating records, handling payment, and finally notifying the user.
 */
public class BookingCoordinator {
    private final ShowTimeAuthority showTimeAuthority;
    private final PaymentProcessor paymentProcessor;
    private final BookingRecorder bookingRecorder;
    private final CustomerNotifier customerNotifier;
    
    // Constructor with dependencies
    
    /**
     * The main narrative of booking a set of seats for a show time.
     * This method tells the story of the booking process from beginning to end.
     */
    public BookingResult bookSeats(BookingRequest request) {
        validateBookingPreconditions(request);
        
        if (seatsAreNoLongerAvailable(request)) {
            return BookingResult.seatsUnavailable(request.getSeats());
        }
        
        Booking booking = createInitialBookingRecord(request);
        
        reserveSeatsTemporarily(request, booking);
        scheduleReservationExpiration(booking);
        
        PaymentResult paymentResult = attemptPayment(request, booking);
        if (paymentResult.failed()) {
            releaseReservation(booking);
            return BookingResult.paymentFailed(paymentResult.getReason());
        }
        
        confirmBooking(booking, paymentResult);
        
        notifyCustomerOfSuccess(booking);
        recordBookingAnalytics(booking);
        
        return BookingResult.success(booking);
    }
    
    /**
     * Chapter 1: Ensuring we have valid inputs before starting our journey.
     * A proper booking can only begin with proper information.
     */
    private void validateBookingPreconditions(BookingRequest request) {
        ensureUserIsAuthenticated(request.getUser());
        ensureShowTimeExists(request.getShowTimeId());
        ensureShowTimeIsInFuture(request.getShowTimeId());
        ensureSeatsAreValid(request.getShowTimeId(), request.getSeats());
    }
    
    /**
     * A small sub-chapter of validation: ensuring the user is legitimate.
     */
    private void ensureUserIsAuthenticated(User user) {
        if (user == null) {
            throw new BookingException("A booking requires a user");
        }
        
        if (!user.isAuthenticated()) {
            throw new UnauthorizedUserException("You must be logged in to book seats");
        }
    }
    
    /**
     * Chapter 2: Checking if the desired seats are still available.
     * The world may have changed since the user made their selection.
     */
    private boolean seatsAreNoLongerAvailable(BookingRequest request) {
        ShowTime showTime = showTimeAuthority.findShowTime(request.getShowTimeId());
        
        return !showTime.areSeatsAvailable(request.getSeats());
    }
    
    /**
     * Chapter 3: Creating the initial record of our booking journey.
     * Like setting out on an adventure, we create a log of our path.
     */
    private Booking createInitialBookingRecord(BookingRequest request) {
        ShowTime showTime = showTimeAuthority.findShowTime(request.getShowTimeId());
        User user = request.getUser();
        Set<SeatCoordinate> seats = request.getSeats();
        
        return bookingRecorder.createBooking(showTime, user, seats);
    }
    
    /**
     * Chapter 4: Claiming the seats temporarily while payment is arranged.
     * We place a "reserved" sign on the chosen seats.
     */
    private void reserveSeatsTemporarily(BookingRequest request, Booking booking) {
        ShowTime showTime = showTimeAuthority.findShowTime(request.getShowTimeId());
        
        boolean reservationSuccessful = showTime.reserveSeats(
            booking.getSeats(), booking.getId());
            
        if (!reservationSuccessful) {
            throw new ConcurrentBookingException(
                "Someone else just reserved one or more of your selected seats");
        }
        
        // Record the updated show time state
        showTimeAuthority.updateShowTime(showTime);
    }
    
    /**
     * Chapter 5: Setting a time limit on our seat reservation.
     * Even the best-intentioned customers may abandon their booking,
     * so we ensure seats don't remain reserved indefinitely.
     */
    private void scheduleReservationExpiration(Booking booking) {
        int expirationMinutes = determineExpirationTime(booking);
        
        bookingRecorder.scheduleExpiration(booking, expirationMinutes);
    }
    
    /**
     * Chapter 6: Processing payment for the booking.
     * The critical moment where intention becomes commitment.
     */
    private PaymentResult attemptPayment(BookingRequest request, Booking booking) {
        Money amount = calculateBookingAmount(booking);
        
        return paymentProcessor.processPayment(
            request.getPaymentMethod(),
            amount,
            String.format("Ticket booking for %s", booking.getShowTime().getMovie().getTitle())
        );
    }
    
    /**
     * Chapter 7: If payment fails, we must release our claim on the seats.
     * A polite adventurer leaves no trace when changing their path.
     */
    private void releaseReservation(Booking booking) {
        ShowTime showTime = booking.getShowTime();
        
        showTime.releaseSeats(booking.getSeats(), booking.getId());
        
        // Record the updated show time state
        showTimeAuthority.updateShowTime(showTime);
        
        // Mark the booking as cancelled
        booking.cancel("Payment failed");
        bookingRecorder.updateBooking(booking);
    }
    
    /**
     * Chapter 8: Finalizing the booking after successful payment.
     * The adventure is confirmed, and the seats are claimed.
     */
    private void confirmBooking(Booking booking, PaymentResult paymentResult) {
        booking.confirm(paymentResult.getTransactionId());
        bookingRecorder.updateBooking(booking);
        
        // Change seat status from reserved to booked
        ShowTime showTime = booking.getShowTime();
        showTime.confirmSeats(booking.getSeats(), booking.getId());
        showTimeAuthority.updateShowTime(showTime);
    }
    
    /**
     * Chapter 9: Letting the customer know their booking is confirmed.
     * Every story needs a satisfying conclusion for its protagonists.
     */
    private void notifyCustomerOfSuccess(Booking booking) {
        customerNotifier.sendBookingConfirmation(booking);
    }
    
    /**
     * Final chapter: Recording the completed journey for future reference.
     * Stories become history, and history informs future stories.
     */
    private void recordBookingAnalytics(Booking booking) {
        // Record analytics about the booking for business intelligence
    }
}
```

This implementation embraces the narrative approach, with each method telling a specific part of the story. The main `bookSeats` method reads like a table of contents, while each helper method develops a specific chapter in depth. Comments are used to enhance the narrative, not just explain the code.

## True Class Impersonation with Seat

```java
/**
 * I am a Seat in a theatre.
 * 
 * As a Seat, my position (row and number) and type define who I am.
 * These cannot change - a seat in row A cannot suddenly become a seat in row B.
 * 
 * As a Seat, I control my own status. No external entity can force a status
 * change that violates my rules. For example, I cannot be booked without
 * first being reserved, just as in a real theatre.
 * 
 * As a Seat, I protect myself during concurrent access. Two people cannot
 * reserve me at the same time, just as a physical seat cannot be occupied
 * by two people simultaneously.
 */
public final class Seat {
    private final char row;
    private final int number;
    private final SeatType type;
    private Status status;
    private UUID reservedBy;
    
    /**
     * I come into existence with a specific row, number, and type.
     * These aspects of my identity are immutable.
     */
    public Seat(char row, int number, SeatType type) {
        validateRowIsALetter(row);
        validateNumberIsPositive(number);
        
        this.row = Character.toUpperCase(row); // I standardize my row to uppercase
        this.number = number;
        this.type = Objects.requireNonNull(type, "I must have a type");
        this.status = Status.AVAILABLE;
    }
    
    private void validateRowIsALetter(char row) {
        if (!Character.isLetter(row)) {
            throw new InvalidSeatPositionException(
                "My row must be a letter, not '" + row + "'");
        }
    }
    
    private void validateNumberIsPositive(int number) {
        if (number <= 0) {
            throw new InvalidSeatPositionException(
                "My number must be positive, not " + number);
        }
    }
    
    /**
     * I allow anyone to know my row, as this is publicly visible.
     */
    public char getRow() {
        return row;
    }
    
    /**
     * I allow anyone to know my number, as this is publicly visible.
     */
    public int getNumber() {
        return number;
    }
    
    /**
     * I allow anyone to know my type, as this is publicly visible.
     */
    public SeatType getType() {
        return type;
    }
    
    /**
     * I allow anyone to know my status, as this is publicly visible
     * in the real world (whether I am occupied or not).
     */
    public Status getStatus() {
        return status;
    }
    
    /**
     * I can only be reserved if I'm currently available.
     * The booking ID becomes my "reserved by" reference.
     */
    public synchronized boolean reserve(UUID bookingId) {
        if (status != Status.AVAILABLE) {
            return false; // I cannot be reserved if I'm not available
        }
        
        status = Status.RESERVED;
        reservedBy = bookingId;
        return true;
    }
    
    /**
     * I can only be booked if I'm currently reserved by the specified booking.
     * This ensures only the entity that reserved me can book me.
     */
    public synchronized boolean book(UUID bookingId) {
        if (status != Status.RESERVED || !Objects.equals(reservedBy, bookingId)) {
            return false; // I cannot be booked if not reserved by this booking
        }
        
        status = Status.BOOKED;
        return true;
    }
    
    /**
     * I can only be released if I'm currently reserved by the specified booking.
     * This ensures only the entity that reserved me can release me.
     */
    public synchronized boolean release(UUID bookingId) {
        if (status != Status.RESERVED || !Objects.equals(reservedBy, bookingId)) {
            return false; // I cannot be released if not reserved by this booking
        }
        
        status = Status.AVAILABLE;
        reservedBy = null;
        return true;
    }
    
    /**
     * The theatre staff can block me for maintenance, but only if I'm
     * not currently reserved or booked.
     */
    public synchronized boolean blockForMaintenance(Staff staff) {
        if (!staff.hasMaintenanceAuthority()) {
            throw new UnauthorizedOperationException(
                "Only maintenance staff can block seats");
        }
        
        if (status == Status.RESERVED || status == Status.BOOKED) {
            return false; // I cannot be blocked if I'm reserved or booked
        }
        
        status = Status.BLOCKED_FOR_MAINTENANCE;
        return true;
    }
    
    /**
     * My possible statuses represent my real-world states.
     */
    public enum Status {
        AVAILABLE,
        RESERVED,
        BOOKED,
        BLOCKED_FOR_MAINTENANCE
    }
    
    /**
     * My string representation includes my position and status,
     * just as you would describe a real seat.
     */
    @Override
    public String toString() {
        return String.format("Seat %c%d (%s)", row, number, status);
    }
    
    /**
     * Two seats are the same if they have the same position and type,
     * regardless of their current status.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Seat other = (Seat) o;
        return row == other.row && 
               number == other.number && 
               type.equals(other.type);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(row, number, type);
    }
}
```

This implementation truly embodies the Seat class, speaking in the first person and enforcing its own rules about state changes. It protects its identity (row, number, type) as immutable and controls its status transitions according to real-world rules.

## True Encapsulation with Person

```java
/**
 * I am a Person in the cinema domain.
 * 
 * As a Person, my identity is defined by immutable characteristics -
 * my name and date of birth. These cannot change without making me
 * a different person.
 * 
 * As a Person, I control access to my personal information based on
 * real-world authority patterns. I share my email with people I choose,
 * my financial details only with trusted financial institutions, and
 * my medical information only with healthcare providers.
 */
public class Person {
    private final UUID id;
    private final String firstName;
    private final String lastName;
    private final LocalDate dateOfBirth;
    private final Gender gender;
    
    // Controlled access information
    private EmailAddress emailAddress;
    private PhoneNumber phoneNumber;
    private Address homeAddress;
    private final BigDecimal salary; // For actors, directors, etc.
    
    // Relationships
    private Agent agent;
    private Set<Studio> contractedStudios = new HashSet<>();
    private InsuranceProvider insuranceProvider;
    
    /**
     * I come into existence with my core identity attributes.
     */
    public Person(String firstName, String lastName, LocalDate dateOfBirth, Gender gender) {
        this.id = UUID.randomUUID();
        this.firstName = Objects.requireNonNull(firstName, "I must have a first name");
        this.lastName = Objects.requireNonNull(lastName, "I must have a last name");
        this.dateOfBirth = Objects.requireNonNull(dateOfBirth, "I must have a birth date");
        this.gender = Objects.requireNonNull(gender, "I must have a gender");
        this.salary = null; // Not all persons have a salary in this domain
    }
    
    /**
     * Industry professionals like actors come into existence with salary information.
     */
    public Person(String firstName, String lastName, LocalDate dateOfBirth, 
                  Gender gender, BigDecimal salary) {
        this(firstName, lastName, dateOfBirth, gender);
        
        if (salary != null && salary.compareTo(BigDecimal.ZERO) < 0) {
            throw new IllegalArgumentException("My salary cannot be negative");
        }
        
        this.salary = salary;
    }
    
    /**
     * I allow anyone to know my name, as this is public information
     * in the cinema domain.
     */
    public String getFirstName() {
        return firstName;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public String getFullName() {
        return firstName + " " + lastName;
    }
    
    /**
     * I allow anyone to know my gender, as this is public information
     * in the cinema domain.
     */
    public Gender getGender() {
        return gender;
    }
    
    /**
     * I allow anyone to calculate my age, but I don't share my exact
     * birth date with just anyone.
     */
    public int getAge() {
        return Period.between(dateOfBirth, LocalDate.now()).getYears();
    }
    
    /**
     * I only share my exact birth date with entities that have a
     * legitimate need to know, such as my insurance provider.
     */
    public LocalDate getDateOfBirthFor(Entity requestor) {
        if (requestor instanceof InsuranceProvider && 
            requestor.equals(this.insuranceProvider)) {
            return dateOfBirth;
        }
        
        if (requestor instanceof LegalAuthority) {
            return dateOfBirth;
        }
        
        throw new UnauthorizedAccessException(
            "I don't share my exact birth date with " + requestor);
    }
    
    /**
     * I only share my salary with authorized parties like my agent
     * or tax authorities.
     */
    public BigDecimal getSalaryFor(Entity requestor) {
        if (salary == null) {
            throw new UndefinedInformationException("I don't have a defined salary");
        }
        
        if (requestor instanceof Agent && requestor.equals(this.agent)) {
            return salary;
        }
        
        if (requestor instanceof TaxAuthority) {
            TaxAuthority taxAuthority = (TaxAuthority) requestor;
            if (taxAuthority.hasJurisdictionOver(this)) {
                return salary;
            }
        }
        
        if (requestor instanceof Studio && contractedStudios.contains(requestor)) {
            return salary;
        }
        
        throw new UnauthorizedAccessException(
            "I don't share my salary with " + requestor);
    }
    
    /**
     * I share my contact information only with entities I choose to.
     */
    public ContactInformation getContactInformationFor(Entity requestor) {
        if (requestor instanceof Agent && requestor.equals(this.agent)) {
            return new ContactInformation(emailAddress, phoneNumber, homeAddress);
        }
        
        if (requestor instanceof Studio && contractedStudios.contains(requestor)) {
            return new ContactInformation(emailAddress, phoneNumber, null); // No home address
        }
        
        if (requestor instanceof InsuranceProvider && 
            requestor.equals(this.insuranceProvider)) {
            return new ContactInformation(emailAddress, phoneNumber, homeAddress);
        }
        
        if (hasConsented(requestor, InformationType.CONTACT)) {
            return new ContactInformation(emailAddress, null, null); // Email only
        }
        
        throw new UnauthorizedAccessException(
            "I don't share my contact information with " + requestor);
    }
    
    /**
     * I control who represents me as my agent.
     */
    public void setAgent(Agent agent) {
        this.agent = agent;
    }
    
    /**
     * I can update my contact information.
     */
    public void updateContactInformation(EmailAddress email, PhoneNumber phone, Address address) {
        this.emailAddress = email;
        this.phoneNumber = phone;
        this.homeAddress = address;
    }
    
    /**
     * I control which studios I have contracts with.
     */
    public void addContractedStudio(Studio studio) {
        contractedStudios.add(studio);
    }
    
    public void removeContractedStudio(Studio studio) {
        contractedStudios.remove(studio);
    }
    
    /**
     * I control which insurance provider I use.
     */
    public void setInsuranceProvider(InsuranceProvider provider) {
        this.insuranceProvider = provider;
    }
    
    /**
     * I track entities I've consented to share information with.
     */
    private final Map<Entity, Set<InformationType>> consentMap = new HashMap<>();
    
    public void giveConsent(Entity entity, InformationType informationType) {
        consentMap.computeIfAbsent(entity, k -> new HashSet<>()).add(informationType);
    }
    
    public void revokeConsent(Entity entity, InformationType informationType) {
        if (consentMap.containsKey(entity)) {
            consentMap.get(entity).remove(informationType);
        }
    }
    
    private boolean hasConsented(Entity entity, InformationType informationType) {
        return consentMap.containsKey(entity) && 
               consentMap.get(entity).contains(informationType);
    }
    
    /**
     * Types of information that require consent.
     */
    public enum InformationType {
        CONTACT,
        PREFERENCES,
        VIEWING_HISTORY
    }
}
```

This implementation demonstrates true encapsulation based on real-world authority patterns. The Person class controls access to its information based on the identity and relationship of the requestor, reflecting how people share information selectively in the real world.

## Method-Level Responsibility with ShowTime

```java
/**
 * I represent a specific screening of a movie at a specific time and place.
 * 
 * As a ShowTime, I know what movie is showing, when it starts and ends,
 * and which seats are available, reserved, or booked.
 * 
 * As a ShowTime, I control the status of my seats during the booking process,
 * ensuring consistency even during concurrent bookings.
 */
public class ShowTime {
    private final UUID id;
    private final Movie movie;
    private final Screen screen;
    private final LocalDateTime startTime;
    private final Map<SeatCoordinate, SeatStatus> seatStatusMap;
    private final Map<SeatCoordinate, UUID> seatReservations;
    
    /**
     * I come into existence representing a specific movie screening.
     */
    public ShowTime(Movie movie, Screen screen, LocalDateTime startTime) {
        validateShowTimeParameters(movie, screen, startTime);
        
        this.id = UUID.randomUUID();
        this.movie = movie;
        this.screen = screen;
        this.startTime = startTime;
        this.seatStatusMap = new ConcurrentHashMap<>();
        this.seatReservations = new ConcurrentHashMap<>();
        
        initializeAllSeatsAsAvailable();
    }
    
    /**
     * I ensure my creation parameters are valid.
     */
    private void validateShowTimeParameters(Movie movie, Screen screen, LocalDateTime startTime) {
        Objects.requireNonNull(movie, "I must have a movie to show");
        Objects.requireNonNull(screen, "I must have a screen to show the movie on");
        Objects.requireNonNull(startTime, "I must have a start time");
        
        if (startTime.isBefore(LocalDateTime.now())) {
            throw new InvalidShowTimeException("I cannot start in the past");
        }
    }
    
    /**
     * When I'm created, all seats start as available.
     */
    private void initializeAllSeatsAsAvailable() {
        screen.getSeatLayout().getAllSeats().forEach(seat -> {
            SeatCoordinate coordinate = new SeatCoordinate(seat.getRow(), seat.getNumber());
            seatStatusMap.put(coordinate, SeatStatus.AVAILABLE);
        });
    }
    
    /**
     * I allow anyone to know my unique identity.
     */
    public UUID getId() {
        return id;
    }
    
    /**
     * I allow anyone to know what movie I'm showing.
     */
    public Movie getMovie() {
        return movie;
    }
    
    /**
     * I allow anyone to know which screen I'm using.
     */
    public Screen getScreen() {
        return screen;
    }
    
    /**
     * I allow anyone to know when I start.
     */
    public LocalDateTime getStartTime() {
        return startTime;
    }
    
    /**
     * I can calculate when I end based on my start time and movie duration.
     */
    public LocalDateTime getEndTime() {
        return startTime.plusMinutes(movie.getDurationMinutes());
    }
    
    /**
     * I allow anyone to check the status of a specific seat.
     */
    public SeatStatus getSeatStatus(SeatCoordinate coordinate) {
        validateSeatExists(coordinate);
        
        return seatStatusMap.get(coordinate);
    }
    
    /**
     * I verify if a collection of seats are all available.
     */
    public boolean areSeatsAvailable(Set<SeatCoordinate> coordinates) {
        // I check each seat individually
        for (SeatCoordinate coordinate : coordinates) {
            // I first make sure the seat exists
            validateSeatExists(coordinate);
            
            // Then I check if it's available
            if (getSeatStatus(coordinate) != SeatStatus.AVAILABLE) {
                return false;
            }
        }
        
        return true;
    }
    
    /**
     * I ensure the seat exists before allowing operations on it.
     */
    private void validateSeatExists(SeatCoordinate coordinate) {
        if (!seatStatusMap.containsKey(coordinate)) {
            throw new InvalidSeatException(
                "The seat " + coordinate + " doesn't exist in this screen");
        }
    }
    
    /**
     * I reserve a collection of seats atomically for a specific booking.
     * Either all seats are reserved, or none are.
     */
    public synchronized boolean reserveSeats(Set<SeatCoordinate> coordinates, UUID bookingId) {
        // First I check if all seats are available
        if (!areSeatsAvailable(coordinates)) {
            return false;
        }
        
        // Then I reserve all seats atomically
        coordinates.forEach(coordinate -> {
            seatStatusMap.put(coordinate, SeatStatus.RESERVED);
            seatReservations.put(coordinate, bookingId);
        });
        
        return true;
    }
    
    /**
     * I confirm reservation of seats for a booking, changing them from
     * reserved to booked status.
     */
    public synchronized boolean confirmSeats(Set<SeatCoordinate> coordinates, UUID bookingId) {
        // I verify all seats are currently reserved by this booking
        for (SeatCoordinate coordinate : coordinates) {
            validateSeatExists(coordinate);
            
            if (getSeatStatus(coordinate) != SeatStatus.RESERVED ||
                !bookingId.equals(seatReservations.get(coordinate))) {
                return false;
            }
        }
        
        // Then I confirm all seats atomically
        coordinates.forEach(coordinate -> 
            seatStatusMap.put(coordinate, SeatStatus.BOOKED));
        
        return true;
    }
    
    /**
     * I release seats that were reserved but not confirmed.
     */
    public synchronized boolean releaseSeats(Set<SeatCoordinate> coordinates, UUID bookingId) {
        // I verify all seats are currently reserved by this booking
        for (SeatCoordinate coordinate : coordinates) {
            validateSeatExists(coordinate);
            
            if (getSeatStatus(coordinate) != SeatStatus.RESERVED ||
                !bookingId.equals(seatReservations.get(coordinate))) {
                return false;
            }
        }
        
        // Then I release all seats atomically
        coordinates.forEach(coordinate -> {
            seatStatusMap.put(coordinate, SeatStatus.AVAILABLE);
            seatReservations.remove(coordinate);
        });
        
        return true;
    }
    
    /**
     * I provide a snapshot of all seat statuses for the UI to display.
     */
    public Map<SeatCoordinate, SeatStatus> getSeatStatusSnapshot() {
        return new HashMap<>(seatStatusMap); // Defensive copy
    }
    
    /**
     * I represent the possible states of seats within me.
     */
    public enum SeatStatus {
        AVAILABLE,
        RESERVED,
        BOOKED,
        BLOCKED_FOR_MAINTENANCE
    }
}
```

This implementation demonstrates method-level responsibility, with each method having a clear, single purpose within the narrative of the class. The ShowTime speaks in the first person, enforcing its own rules about seat reservation and ensuring consistency during concurrent operations.

## Domain-Driven Flexibility with Payment Strategy

```java
/**
 * I define the contract for different pricing strategies.
 * 
 * As a PricingStrategy, I know how to calculate the price for a booking
 * based on factors like show time, seats, and customer type.
 * 
 * I'm designed for extension, allowing different cinemas to have
 * different pricing policies without changing existing code.
 */
public interface PricingStrategy {
    /**
     * I calculate the total price for a booking.
     */
    Money calculatePrice(BookingPriceContext context);
}

/**
 * I represent all the information needed to make a pricing decision.
 * 
 * As a BookingPriceContext, I gather all factors that might influence
 * pricing in one place, making it easier to implement new pricing strategies.
 */
public class BookingPriceContext {
    private final ShowTime showTime;
    private final Set<SeatCoordinate> seats;
    private final Customer customer;
    private final LocalDateTime bookingTime;
    private final Set<Coupon> appliedCoupons;
    
    // Constructor and getters
}

/**
 * I am a standard pricing strategy used by most cinemas.
 * 
 * As a StandardPricingStrategy, I calculate prices based on:
 * - Base price of the movie
 * - Multipliers for different seat types
 * - Multipliers for peak times (evenings, weekends)
 * - Discounts for loyalty program members
 */
public class StandardPricingStrategy implements PricingStrategy {
    private final Money basePrice;
    
    public StandardPricingStrategy(Money basePrice) {
        this.basePrice = Objects.requireNonNull(basePrice, "I must have a base price");
    }
    
    @Override
    public Money calculatePrice(BookingPriceContext context) {
        Money totalPrice = Money.zero(basePrice.getCurrency());
        
        for (SeatCoordinate seatCoordinate : context.getSeats()) {
            Money seatPrice = calculatePriceForSeat(seatCoordinate, context);
            totalPrice = totalPrice.add(seatPrice);
        }
        
        totalPrice = applyTimeBasedAdjustments(totalPrice, context);
        totalPrice = applyCustomerDiscounts(totalPrice, context);
        totalPrice = applyCoupons(totalPrice, context);
        
        return totalPrice;
    }
    
    /**
     * I calculate the price for an individual seat based on its type.
     */
    private Money calculatePriceForSeat(SeatCoordinate coordinate, BookingPriceContext context) {
        ShowTime showTime = context.getShowTime();
        Screen screen = showTime.getScreen();
        Seat seat = screen.getSeatLayout().getSeat(coordinate);
        
        // Apply seat type multiplier
        return basePrice.multiply(seat.getType().getPriceMultiplier());
    }
    
/**
 * I adjust the price based on when the show is happening.
 */
private Money applyTimeBasedAdjustments(Money subtotal, BookingPriceContext context) {
    ShowTime showTime = context.getShowTime();
    LocalDateTime startTime = showTime.getStartTime();
    DayOfWeek dayOfWeek = startTime.getDayOfWeek();
    int hour = startTime.getHour();
    
    // Weekend premium
    if (dayOfWeek == DayOfWeek.FRIDAY || dayOfWeek == DayOfWeek.SATURDAY) {
        subtotal = subtotal.multiply(new BigDecimal("1.2")); // 20% premium
    }
    
    // Evening premium
    if (hour >= 18) { // 6 PM or later
        subtotal = subtotal.multiply(new BigDecimal("1.15")); // 15% premium
    }
    
    return subtotal;
}

/**
 * I apply any discounts the customer is eligible for.
 */
private Money applyCustomerDiscounts(Money subtotal, BookingPriceContext context) {
    Customer customer = context.getCustomer();
    
    // Loyalty program discount
    if (customer.isLoyaltyMember()) {
        LoyaltyTier tier = customer.getLoyaltyTier();
        
        BigDecimal discountRate = switch (tier) {
            case SILVER -> new BigDecimal("0.05"); // 5% discount
            case GOLD -> new BigDecimal("0.10");   // 10% discount
            case PLATINUM -> new BigDecimal("0.15"); // 15% discount
            default -> BigDecimal.ZERO;
        };
        
        subtotal = subtotal.multiply(BigDecimal.ONE.subtract(discountRate));
    }
    
    // Senior discount
    if (customer.getAge() >= 65) {
        subtotal = subtotal.multiply(new BigDecimal("0.9")); // 10% discount
    }
    
    // Student discount
    if (customer.isStudent()) {
        subtotal = subtotal.multiply(new BigDecimal("0.85")); // 15% discount
    }
    
    return subtotal;
}

/**
 * I apply any coupons the customer has provided.
 */
private Money applyCoupons(Money subtotal, BookingPriceContext context) {
    for (Coupon coupon : context.getAppliedCoupons()) {
        if (coupon.isValid() && coupon.isApplicableTo(context.getShowTime())) {
            subtotal = coupon.apply(subtotal);
        }
    }
    
    return subtotal;
}

/**
 * I am a premium pricing strategy used for special events and premieres.
 * 
 * As a PremiumPricingStrategy, I calculate higher prices based on the
 * exclusive nature of the event, while offering special perks to VIPs.
 */
public class PremiumPricingStrategy implements PricingStrategy {
    private final Money basePrice;
    
    public PremiumPricingStrategy(Money basePrice) {
        this.basePrice = Objects.requireNonNull(basePrice, "I must have a base price");
    }
    
    @Override
    public Money calculatePrice(BookingPriceContext context) {
        // Premium events have a higher starting price
        Money totalPrice = basePrice.multiply(new BigDecimal("1.5"));
        
        for (SeatCoordinate seatCoordinate : context.getSeats()) {
            // Calculate premium for each seat
            BigDecimal seatMultiplier = getSeatMultiplier(seatCoordinate, context);
            totalPrice = totalPrice.multiply(seatMultiplier);
        }
        
        // VIPs get special treatment
        if (isVeryImportantCustomer(context.getCustomer())) {
            totalPrice = applyVipPerks(totalPrice);
        }
        
        return totalPrice;
    }
    
    /**
     * I determine how much premium to apply to each seat.
     */
    private BigDecimal getSeatMultiplier(SeatCoordinate coordinate, BookingPriceContext context) {
        // Implementation details for premium seat calculation
        return new BigDecimal("1.2"); // Example multiplier
    }
    
    /**
     * I determine if a customer qualifies for VIP treatment.
     */
    private boolean isVeryImportantCustomer(Customer customer) {
        return customer.getLoyaltyTier() == LoyaltyTier.PLATINUM || 
               customer.isIndustryProfessional();
    }
    
    /**
     * I apply special perks for VIP customers.
     */
    private Money applyVipPerks(Money subtotal) {
        // VIPs get a discount even at premium events
        return subtotal.multiply(new BigDecimal("0.85")); // 15% VIP discount
    }
}

/**
 * I am a factory that knows which pricing strategy to use for each show time.
 * 
 * As a PricingStrategyFactory, I consider factors like movie type, release
 * recency, and venue to determine the appropriate pricing approach.
 */
public class PricingStrategyFactory {
    private final Money standardBasePrice;
    private final Money premiumBasePrice;
    private final Set<UUID> specialEventMovieIds;
    
    // Constructor and initialization
    
    /**
     * I determine the appropriate pricing strategy for a show time.
     */
    public PricingStrategy createStrategyFor(ShowTime showTime) {
        Movie movie = showTime.getMovie();
        
        if (isSpecialEvent(movie)) {
            return new PremiumPricingStrategy(premiumBasePrice);
        }
        
        if (isRecentRelease(movie)) {
            return new RecentReleasePricingStrategy(standardBasePrice);
        }
        
        return new StandardPricingStrategy(standardBasePrice);
    }
    
    /**
     * I determine if a movie is a special event like a premiere or limited screening.
     */
    private boolean isSpecialEvent(Movie movie) {
        return specialEventMovieIds.contains(movie.getId());
    }
    
    /**
     * I determine if a movie is a recent release (within 2 weeks).
     */
    private boolean isRecentRelease(Movie movie) {
        LocalDate releaseDate = movie.getReleaseDate();
        LocalDate twoWeeksAgo = LocalDate.now().minusWeeks(2);
        
        return releaseDate.isAfter(twoWeeksAgo);
    }
}
```

This implementation truly embodies domain-driven flexibility. It doesn't just use patterns mechanically but creates a system where different pricing approaches can coexist and be selected based on domain concepts like special events and customer status. Each method has a singular focus, and the code tells a story about how pricing works in the cinema domain.

## True Narrative Approach with Booking Timeout Management

```java
/**
 * I oversee the lifecycle of bookings, ensuring seats don't remain 
 * reserved indefinitely if customers abandon the booking process.
 * 
 * As a ReservationTimekeeper, I set deadlines for payment completion
 * and release seats back to the available pool if those deadlines are missed.
 */
public class ReservationTimekeeper {
    private final ScheduledExecutorService timeKeeper;
    private final ShowTimeAuthority showTimeAuthority;
    private final BookingRecorder bookingRecorder;
    private final CustomerNotifier customerNotifier;
    
    /**
     * I come into existence with the tools I need to manage reservation timeouts.
     */
    public ReservationTimekeeper(
            ShowTimeAuthority showTimeAuthority,
            BookingRecorder bookingRecorder,
            CustomerNotifier customerNotifier) {
        this.showTimeAuthority = Objects.requireNonNull(showTimeAuthority);
        this.bookingRecorder = Objects.requireNonNull(bookingRecorder);
        this.customerNotifier = Objects.requireNonNull(customerNotifier);
        this.timeKeeper = Executors.newScheduledThreadPool(1);
    }
    
    /**
     * I set a time limit for a customer to complete their booking.
     */
    public void setDeadlineForBooking(Booking booking, int minutesAllowed) {
        // Schedule the deadline check
        timeKeeper.schedule(
            () -> checkAndHandleExpiredReservation(booking),
            minutesAllowed,
            TimeUnit.MINUTES
        );
    }
    
    /**
     * I check if a reservation has expired and handle it appropriately.
     */
    private void checkAndHandleExpiredReservation(Booking booking) {
        // First, get a fresh copy of the booking from the database
        Booking currentBooking = bookingRecorder.findBookingById(booking.getId())
            .orElse(null);
        
        if (currentBooking == null) {
            // Booking no longer exists, nothing to do
            return;
        }
        
        // If the booking is still in PAYMENT_PENDING status, it has expired
        if (currentBooking.getStatus() == BookingStatus.PAYMENT_PENDING) {
            handleExpiredReservation(currentBooking);
        }
    }
    
    /**
     * I handle the process of dealing with an expired reservation.
     */
    private void handleExpiredReservation(Booking booking) {
        // The narrative of handling an expired reservation unfolds in clear steps
        releaseTheReservedSeats(booking);
        markBookingAsExpired(booking);
        notifyCustomerOfExpiration(booking);
        updateAnalyticsForExpiredBooking(booking);
    }
    
    /**
     * I release seats that were being held for an expired reservation.
     */
    private void releaseTheReservedSeats(Booking booking) {
        ShowTime showTime = showTimeAuthority.findShowTime(booking.getShowTimeId());
        
        // Release all seats associated with this booking
        boolean released = showTime.releaseSeats(booking.getSeats(), booking.getId());
        
        if (released) {
            // Save the updated show time
            showTimeAuthority.updateShowTime(showTime);
        } else {
            // Log the failure to release seats
            System.err.println("Failed to release seats for expired booking: " + booking.getId());
        }
    }
    
    /**
     * I update the booking record to reflect its expired status.
     */
    private void markBookingAsExpired(Booking booking) {
        booking.expire("Reservation time limit exceeded");
        bookingRecorder.updateBooking(booking);
    }
    
    /**
     * I let the customer know their reservation has expired.
     */
    private void notifyCustomerOfExpiration(Booking booking) {
        customerNotifier.sendExpirationNotice(booking);
    }
    
    /**
     * I update analytics to track expired bookings.
     */
    private void updateAnalyticsForExpiredBooking(Booking booking) {
        // Record data about expired bookings for business intelligence
    }
    
    /**
     * I ensure all my scheduled tasks are properly cancelled when shutting down.
     */
    public void shutdown() {
        timeKeeper.shutdown();
        try {
            if (!timeKeeper.awaitTermination(5, TimeUnit.SECONDS)) {
                timeKeeper.shutdownNow();
            }
        } catch (InterruptedException e) {
            timeKeeper.shutdownNow();
            Thread.currentThread().interrupt();
        }
    }
}
```

This implementation beautifully demonstrates the narrative approach to coding. Each method tells a specific part of the story, from setting a deadline to handling expiration. The main handleExpiredReservation method reads like a table of contents, with each helper method developing a specific chapter of the story.

## Class Impersonation with Movie

```java
/**
 * I am a Movie in the cinema system.
 * 
 * As a Movie, my title, release date, and duration define my fundamental identity.
 * These aspects cannot change because they define what movie I am.
 * 
 * As a Movie, I know about my cast, crew, and genres. These collections are
 * part of what makes me the specific movie that I am.
 * 
 * As a Movie, I can answer questions about my content and characteristics,
 * just as a real movie has intrinsic properties that anyone can observe.
 */
public final class Movie {
    private final UUID id;
    private final String title;
    private final int durationMinutes;
    private final LocalDate releaseDate;
    private final Set<MovieGenre> genres;
    private final String synopsis;
    private final Set<CastMember> cast;
    private final Set<CrewMember> crew;
    
    /**
     * I come into existence with a specific identity and characteristics.
     */
    public Movie(String title, int durationMinutes, LocalDate releaseDate,
                Set<MovieGenre> genres, String synopsis,
                Set<CastMember> cast, Set<CrewMember> crew) {
        ensureTitleIsValid(title);
        ensureDurationIsValid(durationMinutes);
        ensureReleaseDateIsValid(releaseDate);
        ensureGenresAreValid(genres);
        
        this.id = UUID.randomUUID();
        this.title = title;
        this.durationMinutes = durationMinutes;
        this.releaseDate = releaseDate;
        
        // Create immutable defensive copies of collections
        this.genres = Collections.unmodifiableSet(new HashSet<>(genres));
        this.cast = Collections.unmodifiableSet(new HashSet<>(cast));
        this.crew = Collections.unmodifiableSet(new HashSet<>(crew));
        
        this.synopsis = synopsis;
    }
    
    /**
     * I ensure my title is meaningful.
     */
    private void ensureTitleIsValid(String title) {
        if (title == null || title.isBlank()) {
            throw new InvalidMovieException("I cannot exist without a title");
        }
    }
    
    /**
     * I ensure my duration makes sense.
     */
    private void ensureDurationIsValid(int durationMinutes) {
        if (durationMinutes <= 0) {
            throw new InvalidMovieException("I cannot have a non-positive duration");
        }
    }
    
    /**
     * I ensure my release date is logical.
     */
    private void ensureReleaseDateIsValid(LocalDate releaseDate) {
        if (releaseDate == null) {
            throw new InvalidMovieException("I cannot exist without a release date");
        }
    }
    
    /**
     * I ensure I have at least one genre.
     */
    private void ensureGenresAreValid(Set<MovieGenre> genres) {
        if (genres == null || genres.isEmpty()) {
            throw new InvalidMovieException("I must have at least one genre");
        }
    }
    
    /**
     * I allow anyone to know my unique identity.
     */
    public UUID getId() {
        return id;
    }
    
    /**
     * I allow anyone to know my title, as this is public information.
     */
    public String getTitle() {
        return title;
    }
    
    /**
     * I allow anyone to know my duration, as this is public information.
     */
    public int getDurationMinutes() {
        return durationMinutes;
    }
    
    /**
     * I provide a human-friendly description of my duration.
     */
    public String getFormattedDuration() {
        int hours = durationMinutes / 60;
        int minutes = durationMinutes % 60;
        
        if (hours > 0) {
            return String.format("%d h %d min", hours, minutes);
        } else {
            return String.format("%d min", minutes);
        }
    }
    
    /**
     * I allow anyone to know my release date, as this is public information.
     */
    public LocalDate getReleaseDate() {
        return releaseDate;
    }
    
    /**
     * I allow anyone to know my genres, as these are public information.
     * The collection I return is immutable to protect my identity.
     */
    public Set<MovieGenre> getGenres() {
        return genres; // Already immutable
    }
    
    /**
     * I allow anyone to know my synopsis, as this is public information.
     */
    public String getSynopsis() {
        return synopsis;
    }
    
    /**
     * I allow anyone to know my cast, as these are public information.
     * The collection I return is immutable to protect my identity.
     */
    public Set<CastMember> getCast() {
        return cast; // Already immutable
    }
    
    /**
     * I allow anyone to know my crew, as these are public information.
     * The collection I return is immutable to protect my identity.
     */
    public Set<CrewMember> getCrew() {
        return crew; // Already immutable
    }
    
    /**
     * I can tell you if I belong to a specific genre.
     */
    public boolean isOfGenre(MovieGenre genre) {
        return genres.contains(genre);
    }
    
    /**
     * I can determine if I'm appropriate for children to watch.
     */
    public boolean isSuitableForChildren() {
        // Some genres are not suitable for children
        return !genres.contains(MovieGenre.HORROR) && 
               !genres.contains(MovieGenre.THRILLER) &&
               !genres.contains(MovieGenre.EROTIC);
    }
    
    /**
     * I can tell you if a specific person is part of my cast.
     */
    public boolean hasCastMember(Person person) {
        return cast.stream()
            .anyMatch(member -> member.getPerson().equals(person));
    }
    
    /**
     * I can tell you if a specific person directed me.
     */
    public boolean hasDirector(Person person) {
        return crew.stream()
            .anyMatch(member -> member.getRole() == CrewRole.DIRECTOR && 
                               member.getPerson().equals(person));
    }
    
    /**
     * I can tell you who directed me.
     */
    public List<Person> getDirectors() {
        return crew.stream()
            .filter(member -> member.getRole() == CrewRole.DIRECTOR)
            .map(CrewMember::getPerson)
            .collect(Collectors.toList());
    }
    
    /**
     * I can tell you who my lead actors are.
     */
    public List<Person> getLeadActors() {
        return cast.stream()
            .filter(member -> member.getRole() == CastRole.LEAD_ACTOR)
            .map(CastMember::getPerson)
            .collect(Collectors.toList());
    }
    
    /**
     * I am equal to another movie if we share the same title and release date.
     * Two copies of the same movie are the same movie.
     */
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        
        Movie movie = (Movie) o;
        
        return title.equals(movie.title) && 
               releaseDate.equals(movie.releaseDate);
    }
    
    /**
     * My hash code is based on my core identity.
     */
    @Override
    public int hashCode() {
        return Objects.hash(title, releaseDate);
    }
    
    /**
     * My string representation includes my title and release year.
     */
    @Override
    public String toString() {
        return String.format("%s (%d)", title, releaseDate.getYear());
    }
}
```

This implementation fully embraces class impersonation, with the Movie class speaking in the first person and exhibiting a rich understanding of its own identity and behaviors. It doesn't just store data but provides domain-specific methods like determining if it's suitable for children or identifying its directors and lead actors.

## Single Responsibility at Method Level with Customer Notifier

```java
/**
 * I am responsible for all communication with customers regarding
 * their bookings and account activities.
 * 
 * As a CustomerNotifier, I craft and deliver personalized messages
 * for various events in the booking lifecycle, ensuring customers
 * stay informed through their preferred communication channels.
 */
public class CustomerNotifier {
    private final EmailSender emailSender;
    private final SmsSender smsSender;
    private final PushNotificationSender pushSender;
    private final CustomerPreferenceRepository preferenceRepository;
    
    /**
     * I come into existence with the tools I need to reach customers.
     */
    public CustomerNotifier(
            EmailSender emailSender,
            SmsSender smsSender,
            PushNotificationSender pushSender,
            CustomerPreferenceRepository preferenceRepository) {
        this.emailSender = Objects.requireNonNull(emailSender);
        this.smsSender = Objects.requireNonNull(smsSender);
        this.pushSender = Objects.requireNonNull(pushSender);
        this.preferenceRepository = Objects.requireNonNull(preferenceRepository);
    }
    
    /**
     * I inform a customer that their booking has been created and payment is needed.
     */
    public void sendPaymentReminder(Booking booking) {
        // The story of sending a payment reminder unfolds in clear steps
        NotificationContent content = createPaymentReminderContent(booking);
        Customer customer = booking.getCustomer();
        
        deliverMessageThroughPreferredChannels(customer, content);
    }
    
    /**
     * I craft personalized content for a payment reminder.
     */
    private NotificationContent createPaymentReminderContent(Booking booking) {
        Movie movie = booking.getShowTime().getMovie();
        LocalDateTime showTime = booking.getShowTime().getStartTime();
        String formattedTime = formatDateTime(showTime);
        
        String subject = "Complete Your Booking for " + movie.getTitle();
        
        String message = String.format(
            "Your booking for %s on %s is waiting for payment. Please complete your " +
            "purchase within the next 10 minutes to secure your seats.",
            movie.getTitle(),
            formattedTime
        );
        
        return new NotificationContent(subject, message);
    }
    
    /**
     * I inform a customer that their booking has been confirmed.
     */
    public void sendBookingConfirmation(Booking booking) {
        // The story of sending a booking confirmation unfolds in clear steps
        NotificationContent content = createBookingConfirmationContent(booking);
        Customer customer = booking.getCustomer();
        
        deliverMessageThroughPreferredChannels(customer, content);
        addBookingTicketAttachment(booking, content);
        
        // For booking confirmations, we always send an email regardless of preferences
        sendEmailConfirmation(customer, content);
    }
    
    /**
     * I craft personalized content for a booking confirmation.
     */
    private NotificationContent createBookingConfirmationContent(Booking booking) {
        Movie movie = booking.getShowTime().getMovie();
        LocalDateTime showTime = booking.getShowTime().getStartTime();
        String formattedTime = formatDateTime(showTime);
        String seatList = formatSeatList(booking.getSeats());
        
        String subject = "Your Tickets for " + movie.getTitle();
        
        String message = String.format(
            "Your booking for %s on %s has been confirmed! Your seats: %s\n\n" +
            "Please arrive 15 minutes before the show. We look forward to seeing you!",
            movie.getTitle(),
            formattedTime,
            seatList
        );
        
        return new NotificationContent(subject, message);
    }
    
    /**
     * I inform a customer that their reservation has expired.
     */
    public void sendExpirationNotice(Booking booking) {
        NotificationContent content = createExpirationNoticeContent(booking);
        Customer customer = booking.getCustomer();
        
        deliverMessageThroughPreferredChannels(customer, content);
    }
    
    /**
     * I craft personalized content for an expiration notice.
     */
    private NotificationContent createExpirationNoticeContent(Booking booking) {
        Movie movie = booking.getShowTime().getMovie();
        LocalDateTime showTime = booking.getShowTime().getStartTime();
        String formattedTime = formatDateTime(showTime);
        
        String subject = "Your Reservation for " + movie.getTitle() + " Has Expired";
        
        String message = String.format(
            "Your reserved seats for %s on %s have been released as the payment " +
            "time limit has been reached. Feel free to make a new booking if you're still interested.",
            movie.getTitle(),
            formattedTime
        );
        
        return new NotificationContent(subject, message);
    }
    
    /**
     * I add a ticket attachment to booking confirmations.
     */
    private void addBookingTicketAttachment(Booking booking, NotificationContent content) {
        TicketGenerator ticketGenerator = new TicketGenerator();
        byte[] ticketPdf = ticketGenerator.generateTicket(booking);
        
        content.addAttachment("tickets.pdf", ticketPdf, "application/pdf");
    }
    
    /**
     * I send a message through all channels the customer prefers.
     */
    private void deliverMessageThroughPreferredChannels(Customer customer, NotificationContent content) {
        CustomerPreferences preferences = preferenceRepository.findPreferences(customer.getId());
        
        if (preferences.isEmailEnabled()) {
            sendEmailNotification(customer, content);
        }
        
        if (preferences.isSmsEnabled()) {
            sendSmsNotification(customer, content);
        }
        
        if (preferences.isPushEnabled()) {
            sendPushNotification(customer, content);
        }
    }
    
    /**
     * I send an email notification to the customer.
     */
    private void sendEmailNotification(Customer customer, NotificationContent content) {
        emailSender.sendEmail(
            customer.getEmailAddress(),
            content.getSubject(),
            content.getMessage(),
            content.getAttachments()
        );
    }
    
    /**
     * I always send an email confirmation for bookings, regardless of preferences.
     */
    private void sendEmailConfirmation(Customer customer, NotificationContent content) {
        // For confirmations, we always send an email with the ticket attached
        if (!customer.hasEmailAddress()) {
            return; // Can't send email without an address
        }
        
        emailSender.sendEmail(
            customer.getEmailAddress(),
            content.getSubject(),
            content.getMessage(),
            content.getAttachments()
        );
    }
    
    /**
     * I send an SMS notification to the customer.
     */
    private void sendSmsNotification(Customer customer, NotificationContent content) {
        if (!customer.hasPhoneNumber()) {
            return; // Can't send SMS without a phone number
        }
        
        // SMS messages should be more concise
        String smsMessage = content.getMessage().length() > 160 ? 
            content.getMessage().substring(0, 157) + "..." : 
            content.getMessage();
            
        smsSender.sendSms(
            customer.getPhoneNumber(),
            smsMessage
        );
    }
    
    /**
     * I send a push notification to the customer's devices.
     */
    private void sendPushNotification(Customer customer, NotificationContent content) {
        Set<DeviceToken> deviceTokens = customer.getDeviceTokens();
        if (deviceTokens.isEmpty()) {
            return; // No devices registered for push
        }
        
        for (DeviceToken token : deviceTokens) {
            pushSender.sendPushNotification(
                token.getValue(),
                content.getSubject(),
                content.getMessage()
            );
        }
    }
    
    /**
     * I format a collection of seats into a readable string.
     */
    private String formatSeatList(Set<SeatCoordinate> seats) {
        return seats.stream()
            .sorted((a, b) -> {
                int rowCompare = Character.compare(a.getRow(), b.getRow());
                return rowCompare != 0 ? rowCompare : Integer.compare(a.getNumber(), b.getNumber());
            })
            .map(seat -> seat.getRow() + String.valueOf(seat.getNumber()))
            .collect(Collectors.joining(", "));
    }
    
    /**
     * I format a date and time in a human-friendly way.
     */
    private String formatDateTime(LocalDateTime dateTime) {
        return dateTime.format(DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy 'at' h:mm a"));
    }
}
```

This implementation exemplifies method-level responsibility, with each method having a clear, focused purpose. The CustomerNotifier doesn't just send notifications; it crafts personalized content, respects customer preferences, and ensures appropriate delivery across channels. Each method tells a specific part of the communication story with a single responsibility.

## SOLID Principles Embodied in SeatLayoutVisualization

```java
/**
 * I define the contract for visualizing a seating layout.
 * 
 * As a SeatLayoutVisualizer, I create a visual representation of
 * a theatre's seating arrangement for display to customers.
 */
public interface SeatLayoutVisualizer {
    /**
     * I create a visual representation of a seating layout with status information.
     */
    SeatVisualization createVisualization(SeatLayout layout, Map<SeatCoordinate, SeatStatus> statusMap);
}

/**
 * I visualize seating layouts as HTML for web display.
 * 
 * As an HtmlSeatLayoutVisualizer, I create interactive HTML
 * representations of seating arrangements that customers can
 * click on to select seats.
 */
public class HtmlSeatLayoutVisualizer implements SeatLayoutVisualizer {
    @Override
    public SeatVisualization createVisualization(SeatLayout layout, Map<SeatCoordinate, SeatStatus> statusMap) {
        StringBuilder htmlBuilder = new StringBuilder();
        
        // Create the opening HTML structure
        htmlBuilder.append("<div class='seat-layout'>\n");
        
        // Add the screen at the top
        htmlBuilder.append("  <div class='screen'>Screen</div>\n");
        
        // Group seats by row
        Map<Character, List<Seat>> seatsByRow = groupSeatsByRow(layout);
        
        // Create rows from front (screen) to back
        List<Character> rows = getSortedRows(seatsByRow);
        
        for (Character row : rows) {
            createRowHtml(htmlBuilder, row, seatsByRow.get(row), statusMap);
        }
        
        // Close the container
        htmlBuilder.append("</div>");
        
        // Create CSS for the visualization
        String css = createSeatLayoutCss();
        
        return new HtmlSeatVisualization(htmlBuilder.toString(), css);
    }
    
    /**
     * I group seats by their row letter for organized display.
     */
    private Map<Character, List<Seat>> groupSeatsByRow(SeatLayout layout) {
        return layout.getAllSeats().stream()
            .collect(Collectors.groupingBy(Seat::getRow));
    }
    
    /**
     * I determine the order of rows from front to back of the theatre.
     */
    private List<Character> getSortedRows(Map<Character, List<Seat>> seatsByRow) {
        return seatsByRow.keySet().stream()
            .sorted()
            .collect(Collectors.toList());
    }
    
    ```
# Finalizing the Implementation: Embracing the Philosophical Mindset

## SOLID Principles Embodied in SeatLayoutVisualization (Continued)

```java
/**
 * I create the HTML for a single row of seats.
 */
private void createRowHtml(StringBuilder html, Character row, List<Seat> seatsInRow, Map<SeatCoordinate, SeatStatus> statusMap) {
    html.append("  <div class='row'>\n");
    
    // Add row label on the left
    html.append("    <div class='row-label'>").append(row).append("</div>\n");
    
    // Sort seats by seat number
    List<Seat> sortedSeats = seatsInRow.stream()
        .sorted(Comparator.comparing(Seat::getNumber))
        .collect(Collectors.toList());
    
    // Create a seat element for each seat in this row
    for (Seat seat : sortedSeats) {
        createSeatHtml(html, seat, statusMap);
    }
    
    // Add row label on the right for symmetry
    html.append("    <div class='row-label'>").append(row).append("</div>\n");
    
    html.append("  </div>\n");
}

/**
 * I create the HTML for a single seat, with appropriate status classes.
 */
private void createSeatHtml(StringBuilder html, Seat seat, Map<SeatCoordinate, SeatStatus> statusMap) {
    SeatCoordinate coordinate = new SeatCoordinate(seat.getRow(), seat.getNumber());
    SeatStatus status = statusMap.getOrDefault(coordinate, SeatStatus.AVAILABLE);
    
    html.append("    <div class='seat ")
        .append(getSeatTypeClass(seat.getType()))
        .append(" ")
        .append(getSeatStatusClass(status))
        .append("' data-row='").append(seat.getRow())
        .append("' data-number='").append(seat.getNumber())
        .append("' title='").append(getSeatTooltip(seat, status))
        .append("'>\n")
        .append("      ").append(seat.getNumber())
        .append("\n    </div>\n");
}

/**
 * I determine the appropriate CSS class for a seat type.
 */
private String getSeatTypeClass(SeatType type) {
    return switch (type.getCode()) {
        case "STD" -> "standard";
        case "PRM" -> "premium";
        case "VIP" -> "vip";
        case "RCLN" -> "recliner";
        case "LOVS" -> "loveseat";
        default -> "standard";
    };
}

/**
 * I determine the appropriate CSS class for a seat status.
 */
private String getSeatStatusClass(SeatStatus status) {
    return switch (status) {
        case AVAILABLE -> "available";
        case RESERVED -> "reserved";
        case BOOKED -> "booked";
        case BLOCKED_FOR_MAINTENANCE -> "blocked";
    };
}

/**
 * I create a helpful tooltip that explains the seat to the customer.
 */
private String getSeatTooltip(Seat seat, SeatStatus status) {
    StringBuilder tooltip = new StringBuilder();
    tooltip.append("Seat ").append(seat.getRow()).append(seat.getNumber());
    tooltip.append(" (").append(seat.getType().getName()).append(")");
    
    if (status != SeatStatus.AVAILABLE) {
        tooltip.append(" - ").append(status);
    }
    
    return tooltip.toString();
}

/**
 * I create the CSS styles that bring the seat layout to life.
 */
private String createSeatLayoutCss() {
    return """
        .seat-layout {
          display: flex;
          flex-direction: column;
          align-items: center;
          padding: 2rem 0;
          background-color: #f0f0f0;
          border-radius: 8px;
        }
        
        .screen {
          width: 80%;
          height: 30px;
          background-color: #ccc;
          display: flex;
          justify-content: center;
          align-items: center;
          border-radius: 4px;
          margin-bottom: 2rem;
          font-weight: bold;
          color: #333;
        }
        
        .row {
          display: flex;
          margin-bottom: 0.5rem;
          align-items: center;
        }
        
        .row-label {
          width: 30px;
          text-align: center;
          font-weight: bold;
        }
        
        .seat {
          width: 30px;
          height: 30px;
          margin: 0 2px;
          display: flex;
          justify-content: center;
          align-items: center;
          border-radius: 4px;
          cursor: pointer;
          font-size: 0.8rem;
          transition: all 0.2s ease;
        }
        
        .seat.available {
          background-color: #90ee90;
          border: 1px solid #6b8e23;
        }
        
        .seat.reserved {
          background-color: #ffd700;
          border: 1px solid #b8860b;
          cursor: not-allowed;
        }
        
        .seat.booked {
          background-color: #ff6347;
          border: 1px solid #8b0000;
          cursor: not-allowed;
          color: white;
        }
        
        .seat.blocked {
          background-color: #808080;
          border: 1px solid #696969;
          cursor: not-allowed;
        }
        
        .seat.premium {
          background-color: #7edcff;
          border: 1px solid #1e90ff;
        }
        
        .seat.vip {
          background-color: #da70d6;
          border: 1px solid #8b008b;
        }
        
        .seat.recliner {
          width: 34px;
          height: 34px;
          background-color: #f08080;
          border: 1px solid #cd5c5c;
        }
        
        .seat.loveseat {
          width: 60px;
          height: 30px;
          background-color: #ffa07a;
          border: 1px solid #ff6347;
        }
        
        .seat.available:hover {
          transform: scale(1.1);
          box-shadow: 0 0 5px rgba(0,0,0,0.3);
        }
        """;
}


/**
 * I represent a seat visualization in HTML format.
 * 
 * As an HtmlSeatVisualization, I encapsulate both the HTML structure
 * and CSS styling needed to display a seat layout on a web page.
 */
public class HtmlSeatVisualization implements SeatVisualization {
    private final String html;
    private final String css;
    
    public HtmlSeatVisualization(String html, String css) {
        this.html = Objects.requireNonNull(html);
        this.css = Objects.requireNonNull(css);
    }
    
    @Override
    public String getContentType() {
        return "text/html";
    }
    
    @Override
    public String getContent() {
        return String.format("""
            <!DOCTYPE html>
            <html>
            <head>
              <style>
            %s
              </style>
            </head>
            <body>
            %s
              <script>
                document.querySelectorAll('.seat.available').forEach(seat => {
                  seat.addEventListener('click', () => {
                    const row = seat.getAttribute('data-row');
                    const number = seat.getAttribute('data-number');
                    toggleSeatSelection(row, number);
                  });
                });
                
                function toggleSeatSelection(row, number) {
                  const seatElement = document.querySelector(`.seat[data-row="${row}"][data-number="${number}"]`);
                  if (seatElement.classList.contains('selected')) {
                    seatElement.classList.remove('selected');
                  } else {
                    seatElement.classList.add('selected');
                  }
                  
                  // Update selection details elsewhere on the page
                  updateSelectedSeats();
                }
                
                function updateSelectedSeats() {
                  const selectedSeats = Array.from(document.querySelectorAll('.seat.selected'))
                    .map(seat => seat.getAttribute('data-row') + seat.getAttribute('data-number'));
                  
                  // If there's a selection summary element, update it
                  const selectionSummary = document.getElementById('selection-summary');
                  if (selectionSummary) {
                    selectionSummary.textContent = selectedSeats.join(', ');
                  }
                }
              </script>
            </body>
            </html>
            """, css, html);
    }
}

/**
 * I visualize seating layouts as ASCII art for console display.
 * 
 * As an AsciiSeatLayoutVisualizer, I create text-based representations
 * of seating arrangements that can be displayed in a terminal.
 */
public class AsciiSeatLayoutVisualizer implements SeatLayoutVisualizer {
    @Override
    public SeatVisualization createVisualization(SeatLayout layout, Map<SeatCoordinate, SeatStatus> statusMap) {
        StringBuilder ascii = new StringBuilder();
        
        // Add the screen at the top
        ascii.append("       SCREEN        \n");
        ascii.append("=====================\n\n");
        
        // Group seats by row
        Map<Character, List<Seat>> seatsByRow = groupSeatsByRow(layout);
        
        // Create rows from front (screen) to back
        List<Character> rows = getSortedRows(seatsByRow);
        
        for (Character row : rows) {
            // Add row label
            ascii.append(row).append(" ");
            
            List<Seat> sortedSeats = getSortedSeatsInRow(seatsByRow.get(row));
            
            // Add seats
            for (Seat seat : sortedSeats) {
                SeatCoordinate coordinate = new SeatCoordinate(seat.getRow(), seat.getNumber());
                SeatStatus status = statusMap.getOrDefault(coordinate, SeatStatus.AVAILABLE);
                
                ascii.append(getSeatAsciiRepresentation(status)).append(" ");
            }
            
            ascii.append("\n");
        }
        
        // Add legend
        ascii.append("\nLegend: [A] Available, [R] Reserved, [B] Booked, [X] Blocked\n");
        
        return new AsciiSeatVisualization(ascii.toString());
    }
    
    /**
     * I group seats by their row letter for organized display.
     */
    private Map<Character, List<Seat>> groupSeatsByRow(SeatLayout layout) {
        return layout.getAllSeats().stream()
            .collect(Collectors.groupingBy(Seat::getRow));
    }
    
    /**
     * I determine the order of rows from front to back of the theatre.
     */
    private List<Character> getSortedRows(Map<Character, List<Seat>> seatsByRow) {
        return seatsByRow.keySet().stream()
            .sorted()
            .collect(Collectors.toList());
    }
    
    /**
     * I sort seats within a row by their seat number.
     */
    private List<Seat> getSortedSeatsInRow(List<Seat> seatsInRow) {
        return seatsInRow.stream()
            .sorted(Comparator.comparing(Seat::getNumber))
            .collect(Collectors.toList());
    }
    
    /**
     * I create an ASCII representation of a seat based on its status.
     */
    private String getSeatAsciiRepresentation(SeatStatus status) {
        return switch (status) {
            case AVAILABLE -> "[A]";
            case RESERVED -> "[R]";
            case BOOKED -> "[B]";
            case BLOCKED_FOR_MAINTENANCE -> "[X]";
        };
    }
}

/**
 * I represent a seat visualization in ASCII format.
 * 
 * As an AsciiSeatVisualization, I encapsulate a text-based
 * representation of a seat layout for console display.
 */
public class AsciiSeatVisualization implements SeatVisualization {
    private final String asciiArt;
    
    public AsciiSeatVisualization(String asciiArt) {
        this.asciiArt = Objects.requireNonNull(asciiArt);
    }
    
    @Override
    public String getContentType() {
        return "text/plain";
    }
    
    @Override
    public String getContent() {
        return asciiArt;
    }
}
```

This implementation beautifully embodies the Open/Closed Principle, Interface Segregation Principle, and Dependency Inversion Principle. The SeatLayoutVisualizer interface defines a clear contract that different visualizers can implement, allowing the system to be extended with new visualization types without modifying existing code. Each implementation has a single, clear responsibility and depends on abstractions rather than concrete details.

## Method-Level Single Responsibility with SeatSelectionProcessor

```java
/**
 * I process seat selection events from users, ensuring their
 * choices are valid and managing the selection state.
 * 
 * As a SeatSelectionProcessor, I mediate between the UI that
 * shows seats and the booking process that reserves them.
 */
public class SeatSelectionProcessor {
    private final ShowTimeAuthority showTimeAuthority;
    private final PricingStrategy pricingStrategy;
    
    // State
    private final UUID showTimeId;
    private final Set<SeatCoordinate> selectedSeats = new HashSet<>();
    
    /**
     * I come into existence to process seat selections for a specific show time.
     */
    public SeatSelectionProcessor(UUID showTimeId, ShowTimeAuthority showTimeAuthority, PricingStrategy pricingStrategy) {
        this.showTimeId = Objects.requireNonNull(showTimeId);
        this.showTimeAuthority = Objects.requireNonNull(showTimeAuthority);
        this.pricingStrategy = Objects.requireNonNull(pricingStrategy);
    }
    
    /**
     * I handle a user's request to select a specific seat.
     */
    public SeatSelectionResult selectSeat(SeatCoordinate seatCoordinate) {
        validateSeatCoordinate(seatCoordinate);
        
        if (!isSeatAvailable(seatCoordinate)) {
            return SeatSelectionResult.unavailable(seatCoordinate);
        }
        
        if (hasMaximumSeatsBeenSelected()) {
            return SeatSelectionResult.maximumReached();
        }
        
        if (wouldCreateDisconnectedSelection(seatCoordinate)) {
            return SeatSelectionResult.wouldCreateGap();
        }
        
        addSeatToSelection(seatCoordinate);
        
        Money updatedTotalPrice = recalculateTotalPrice();
        
        return SeatSelectionResult.success(seatCoordinate, selectedSeats, updatedTotalPrice);
    }
    
    /**
     * I ensure the provided seat coordinate is valid.
     */
    private void validateSeatCoordinate(SeatCoordinate seatCoordinate) {
        if (seatCoordinate == null) {
            throw new IllegalArgumentException("Seat coordinate cannot be null");
        }
        
        ShowTime showTime = showTimeAuthority.findShowTime(showTimeId);
        Screen screen = showTime.getScreen();
        
        if (!screen.getSeatLayout().hasSeat(seatCoordinate)) {
            throw new InvalidSeatException("Invalid seat coordinate: " + seatCoordinate);
        }
    }
    
    /**
     * I check if a seat is currently available for selection.
     */
    private boolean isSeatAvailable(SeatCoordinate seatCoordinate) {
        ShowTime showTime = showTimeAuthority.findShowTime(showTimeId);
        return showTime.getSeatStatus(seatCoordinate) == SeatStatus.AVAILABLE;
    }
    
    /**
     * I determine if the maximum number of seats has already been selected.
     */
    private boolean hasMaximumSeatsBeenSelected() {
        final int MAX_SEATS_PER_BOOKING = 10;
        return selectedSeats.size() >= MAX_SEATS_PER_BOOKING;
    }
    
    /**
     * I check if adding this seat would create gaps in the selection.
     * This prevents isolated seats that would be hard to sell.
     */
    private boolean wouldCreateDisconnectedSelection(SeatCoordinate newSeat) {
        // If this is the first seat, no problem
        if (selectedSeats.isEmpty()) {
            return false;
        }
        
        // If this seat is adjacent to any currently selected seat, it's fine
        for (SeatCoordinate existingSeat : selectedSeats) {
            if (areSeatsAdjacent(existingSeat, newSeat)) {
                return false;
            }
        }
        
        // Not adjacent to any existing selection
        return true;
    }
    
    /**
     * I determine if two seats are adjacent to each other.
     */
    private boolean areSeatsAdjacent(SeatCoordinate seat1, SeatCoordinate seat2) {
        // Same row, adjacent numbers
        if (seat1.getRow() == seat2.getRow()) {
            int numberDiff = Math.abs(seat1.getNumber() - seat2.getNumber());
            return numberDiff == 1;
        }
        
        // Same number, adjacent rows
        if (seat1.getNumber() == seat2.getNumber()) {
            int rowDiff = Math.abs(seat1.getRow() - seat2.getRow());
            return rowDiff == 1;
        }
        
        return false;
    }
    
    /**
     * I add a seat to the current selection.
     */
    private void addSeatToSelection(SeatCoordinate seatCoordinate) {
        selectedSeats.add(seatCoordinate);
    }
    
    /**
     * I handle a user's request to deselect a specific seat.
     */
    public SeatSelectionResult deselectSeat(SeatCoordinate seatCoordinate) {
        validateSeatCoordinate(seatCoordinate);
        
        if (!isCurrentlySelected(seatCoordinate)) {
            return SeatSelectionResult.notSelected(seatCoordinate);
        }
        
        if (wouldBreakConnectedSelection(seatCoordinate)) {
            return SeatSelectionResult.wouldBreakSelection();
        }
        
        removeSeatFromSelection(seatCoordinate);
        
        Money updatedTotalPrice = recalculateTotalPrice();
        
        return SeatSelectionResult.removed(seatCoordinate, selectedSeats, updatedTotalPrice);
    }
    
    /**
     * I check if a seat is currently in the selection.
     */
    private boolean isCurrentlySelected(SeatCoordinate seatCoordinate) {
        return selectedSeats.contains(seatCoordinate);
    }
    
    /**
     * I determine if removing a seat would break a connected selection.
     * This prevents creating isolated seats in the middle of a selection.
     */
    private boolean wouldBreakConnectedSelection(SeatCoordinate seatToRemove) {
        // If there are 2 or fewer seats selected, removing one can't break connectivity
        if (selectedSeats.size() <= 2) {
            return false;
        }
        
        // Create a temporary set without the seat to remove
        Set<SeatCoordinate> remainingSeats = new HashSet<>(selectedSeats);
        remainingSeats.remove(seatToRemove);
        
        // Check if the remaining seats are still connected
        return !areSeatsConnected(remainingSeats);
    }
    
    /**
     * I check if a set of seats forms a connected group.
     */
    private boolean areSeatsConnected(Set<SeatCoordinate> seats) {
        if (seats.isEmpty()) {
            return true;
        }
        
        // Use a breadth-first search to see if all seats are connected
        Set<SeatCoordinate> visited = new HashSet<>();
        Queue<SeatCoordinate> queue = new LinkedList<>();
        
        // Start with any seat
        SeatCoordinate start = seats.iterator().next();
        queue.add(start);
        visited.add(start);
        
        while (!queue.isEmpty()) {
            SeatCoordinate current = queue.poll();
            
            // For each seat, find all adjacent seats
            for (SeatCoordinate other : seats) {
                if (!visited.contains(other) && areSeatsAdjacent(current, other)) {
                    visited.add(other);
                    queue.add(other);
                }
            }
        }
        
        // If we visited all seats, they're connected
        return visited.size() == seats.size();
    }
    
    /**
     * I remove a seat from the current selection.
     */
    private void removeSeatFromSelection(SeatCoordinate seatCoordinate) {
        selectedSeats.remove(seatCoordinate);
    }
    
    /**
     * I calculate the total price based on the currently selected seats.
     */
    private Money recalculateTotalPrice() {
        if (selectedSeats.isEmpty()) {
            return Money.zero(Currency.getInstance("USD"));
        }
        
        ShowTime showTime = showTimeAuthority.findShowTime(showTimeId);
        
        BookingPriceContext priceContext = new BookingPriceContext(
            showTime,
            selectedSeats,
            null, // No customer yet at selection stage
            LocalDateTime.now(),
            Set.of() // No coupons yet
        );
        
        return pricingStrategy.calculatePrice(priceContext);
    }
    
    /**
     * I clear all selected seats.
     */
    public void clearSelection() {
        selectedSeats.clear();
    }
    
    /**
     * I provide the current set of selected seats.
     */
    public Set<SeatCoordinate> getSelectedSeats() {
        return Collections.unmodifiableSet(selectedSeats);
    }
    
    /**
     * I calculate the current total price for the selected seats.
     */
    public Money getCurrentTotalPrice() {
        return recalculateTotalPrice();
    }
}
```

This implementation exemplifies method-level single responsibility. Each method has a clear, focused purpose, from validating seat coordinates to checking if seats form a connected group. The class also tells a coherent story about seat selection, with methods that build on each other to create a complete narrative.

## Philosophical Testing

```java
/**
 * I verify that a movie's identity is respected and immutable.
 * 
 * As MovieIdentityTests, I ensure that the philosophical principle
 * of immutable core identity is properly implemented in the Movie class.
 */
public class MovieIdentityTests {
    @Test
    public void movieTitleCannotBeChanged() {
        // Arrange - Create a movie with a specific identity
        Movie movie = new Movie(
            "The Godfather",
            175,
            LocalDate.of(1972, 3, 24),
            Set.of(MovieGenre.DRAMA),
            "Epic crime drama about a Mafia family.",
            Set.of(),
            Set.of()
        );
        
        // Act & Assert - Verify no method exists to change the title
        Method[] methods = Movie.class.getMethods();
        
        // No setTitle method should exist
        boolean hasSetTitleMethod = Arrays.stream(methods)
            .anyMatch(method -> method.getName().equals("setTitle"));
            
        assertFalse(hasSetTitleMethod, 
            "A Movie should not allow its title to be changed after creation");
            
        // The title field should be final
        Field titleField = null;
        try {
            titleField = Movie.class.getDeclaredField("title");
        } catch (NoSuchFieldException e) {
            fail("Movie class should have a title field");
        }
        
        int modifiers = titleField.getModifiers();
        assertTrue(Modifier.isFinal(modifiers), 
            "A Movie's title field should be final to protect its identity");
    }
    
    @Test
    public void movieEqualsBasedOnTitleAndReleaseDate() {
        // Arrange - Create two movies with the same identity attributes
        Movie movie1 = new Movie(
            "Inception",
            148,
            LocalDate.of(2010, 7, 16),
            Set.of(MovieGenre.SCIENCE_FICTION, MovieGenre.ACTION),
            "A thief who steals corporate secrets through dream invasion.",
            Set.of(),
            Set.of()
        );
        
        Movie movie2 = new Movie(
            "Inception", // Same title
            148,
            LocalDate.of(2010, 7, 16), // Same release date
            Set.of(MovieGenre.SCIENCE_FICTION, MovieGenre.ACTION, MovieGenre.THRILLER), // Different genres
            "Different synopsis", // Different synopsis
            Set.of(), // Different cast
            Set.of() // Different crew
        );
        
        Movie movie3 = new Movie(
            "Inception", // Same title
            148,
            LocalDate.of(2010, 7, 15), // Different release date
            Set.of(MovieGenre.SCIENCE_FICTION, MovieGenre.ACTION),
            "A thief who steals corporate secrets through dream invasion.",
            Set.of(),
            Set.of()
        );
        
        // Act & Assert
        assertEquals(movie1, movie2, 
            "Movies with the same title and release date should be considered equal " +
            "even if other attributes differ");
            
        assertNotEquals(movie1, movie3, 
            "Movies with different release dates should not be considered equal " +
            "even if the title is the same");
    }
}

/**
 * I verify that a person's information is properly protected
 * based on authority and relationship.
 * 
 * As PersonInformationAccessTests, I ensure that the philosophical
 * principle of authority-based access control is properly implemented.
 */
public class PersonInformationAccessTests {
    @Test
    public void salaryIsOnlyVisibleToAuthorizedParties() {
        // Arrange - Create a person with a salary
        Person actor = new Person(
            "John",
            "Doe",
            LocalDate.of(1980, 1, 1),
            Gender.MALE,
            new BigDecimal("1000000")
        );
        
        // Create potential requestors with different relationships
        Agent authorizedAgent = new Agent("Jane", "Smith");
        Agent unauthorizedAgent = new Agent("Bob", "Johnson");
        Studio authorizedStudio = new Studio("Universal Pictures");
        TaxAuthority taxAuthority = new TaxAuthority("IRS");
        Marketer unauthorizedMarketer = new Marketer("Marketing Co.");
        
        // Establish relationships
        actor.setAgent(authorizedAgent);
        actor.addContractedStudio(authorizedStudio);
        
        // Act & Assert
        
        // Authorized parties can access salary
        assertEquals(new BigDecimal("1000000"),
            actor.getSalaryFor(authorizedAgent),
            "A person's agent should be able to access their salary");
            
        assertEquals(new BigDecimal("1000000"),
            actor.getSalaryFor(authorizedStudio),
            "A person's contracted studio should be able to access their salary");
            
        assertEquals(new BigDecimal("1000000"),
            actor.getSalaryFor(taxAuthority),
            "Tax authorities should be able to access a person's salary");
            
        // Unauthorized parties cannot access salary
        assertThrows(UnauthorizedAccessException.class,
            () -> actor.getSalaryFor(unauthorizedAgent),
            "An unauthorized agent should not be able to access a person's salary");
            
        assertThrows(UnauthorizedAccessException.class,
            () -> actor.getSalaryFor(unauthorizedMarketer),
            "A marketer should not be able to access a person's salary");
    }
    
    @Test
    public void contactInformationHasGranularAccessControl() {
        // Arrange - Create a person with contact information
        Person person = new Person(
            "John",
            "Doe",
            LocalDate.of(1980, 1, 1),
            Gender.MALE
        );
        
        person.updateContactInformation(
            new EmailAddress("john.doe@example.com"),
            new PhoneNumber("+1-555-123-4567"),
            new Address("123 Main St", "Anytown", "12345")
        );
        
        // Create potential requestors with different relationships
        Agent authorizedAgent = new Agent("Jane", "Smith");
        Studio contractedStudio = new Studio("Universal Pictures");
        InsuranceProvider insuranceProvider = new InsuranceProvider("Health Co.");
        Marketer consented = new Marketer("Allowed Marketing");
        Marketer unconsented = new Marketer("Blocked Marketing");
        
        // Establish relationships
        person.setAgent(authorizedAgent);
        person.addContractedStudio(contractedStudio);
        person.setInsuranceProvider(insuranceProvider);
        person.giveConsent(consented, Person.InformationType.CONTACT);
        
        // Act & Assert
        
        // Test different levels of access for different relationships
        ContactInformation agentInfo = person.getContactInformationFor(authorizedAgent);
        assertEquals("john.doe@example.com", agentInfo.getEmail().getValue());
        assertEquals("+1-555-123-4567", agentInfo.getPhone().getValue());
        assertEquals("123 Main St", agentInfo.getAddress().getStreet());
        
        ContactInformation studioInfo = person.getContactInformationFor(contractedStudio);
        assertEquals("john.doe@example.com", studioInfo.getEmail().getValue());
        assertEquals("+1-555-123-4567", studioInfo.getPhone().getValue());
        assertNull(studioInfo.getAddress(), "Studios should not receive home address");
        
        ContactInformation consentedInfo = person.getContactInformationFor(consented);
        assertEquals("john.doe@example.com", consentedInfo.getEmail().getValue());
        assertNull(consentedInfo.getPhone(), "Marketers should only get email, not phone");
        assertNull(consentedInfo.getAddress(), "Marketers should not receive home address");
        
        // Unauthorized parties are blocked
        assertThrows(UnauthorizedAccessException.class,
            () -> person.getContactInformationFor(unconsented),
            "Unconsented marketers should not receive any contact information");
    }
}

/**
 * I verify that seat reservation properly handles concurrent access.
 * 
 * As ConcurrentBookingTests, I ensure that the philosophical
 * principle of authority boundaries is maintained even under
 * concurrent pressure.
 */
public class ConcurrentBookingTests {
    @Test
    public void concurrentSeatReservationEnsuresOnlyOneSucceeds() throws InterruptedException {
        // Arrange - Create a show time with available seats
        ShowTime showTime = createShowTimeWithAvailableSeats();
        SeatCoordinate targetSeat = new SeatCoordinate('A', 1);
        
        // Create coordination tools for the threads
        CountDownLatch readyLatch = new CountDownLatch(2); // Both threads ready
        CountDownLatch startLatch = new CountDownLatch(1); // Start signal
        CountDownLatch finishLatch = new CountDownLatch(2); // Both threads finished
        
        // Track results from each thread
        AtomicBoolean result1 = new AtomicBoolean();
        AtomicBoolean result2 = new AtomicBoolean();
        
        // Act - Create two threads trying to reserve the same seat
        Thread thread1 = new Thread(() -> {
            try {
                readyLatch.countDown(); // Signal thread is ready
                startLatch.await(); // Wait for start signal
                
                // Try to reserve the seat
                result1.set(showTime.reserveSeat(targetSeat, UUID.randomUUID()));
            } catch (Exception e) {
                fail("Thread 1 encountered exception: " + e.getMessage());
            } finally {
                finishLatch.countDown(); // Signal thread is done
            }
        });
        
        Thread thread2 = new Thread(() -> {
            try {
                readyLatch.countDown(); // Signal thread is ready
                startLatch.await(); // Wait for start signal
                
                // Try to reserve the seat
                result2.set(showTime.reserveSeat(targetSeat, UUID.randomUUID()));
            } catch (Exception e) {
                fail("Thread 2 encountered exception: " + e.getMessage());
            } finally {
                finishLatch.countDown(); // Signal thread is done
            }
        });
        
        // Start both threads
        thread1.start();
        thread2.start();
        
        // Wait for both threads to be ready
        readyLatch.await();
        
        // Signal threads to start simultaneously
        startLatch.countDown();
        
        // Wait for both threads to finish
        finishLatch.await();
        
        // Assert - Verify only one thread succeeded
        assertTrue(result1.get() ^ result2.get(), 
            "Only one thread should succeed in reserving the seat");
            
        // Verify the seat is now reserved
        assertEquals(SeatStatus.RESERVED, showTime.getSeatStatus(targetSeat),
            "Seat should be in reserved state after successful reservation");
    }
    
    @Test
    public void reservationTimeoutProperlyReleasesSeats() throws InterruptedException {
        // Arrange - Create booking system components
        ShowTime showTime = createShowTimeWithAvailableSeats();
        BookingRecorder bookingRecorder = new BookingRecorder();
        ShowTimeAuthority showTimeAuthority = new ShowTimeAuthority();
        CustomerNotifier customerNotifier = new CustomerNotifier(
            new MockEmailSender(), new MockSmsSender(), 
            new MockPushSender(), new MockPreferenceRepository());
        
        // Register the show time with the authority
        showTimeAuthority.registerShowTime(showTime);
        
        // Create a reservation timekeeper with a short timeout for testing
        ReservationTimekeeper timekeeper = new ReservationTimekeeper(
            showTimeAuthority, bookingRecorder, customerNotifier);
        
        // Create a booking with reserved seats
        SeatCoordinate seat = new SeatCoordinate('A', 1);
        Customer customer = new Customer("test_user", "password");
        
        // Reserve the seat
        UUID bookingId = UUID.randomUUID();
        assertTrue(showTime.reserveSeat(seat, bookingId),
            "Seat reservation should succeed initially");
        
        Booking booking = new Booking(bookingId, showTime.getId(), Set.of(seat), customer);
        booking.markPaymentPending(); // Set to payment pending status
        
        // Register the booking
        bookingRecorder.saveBooking(booking);
        showTimeAuthority.updateShowTime(showTime);
        
        // Act - Set a very short timeout (100ms for test purposes)
        timekeeper.setDeadlineForBooking(booking, 100); // milliseconds
        
        // Wait for the timeout to occur
        Thread.sleep(200); // Give enough time for the timeout to process
        
        // Assert - Verify the seat was released
        ShowTime updatedShowTime = showTimeAuthority.findShowTime(showTime.getId());
        assertEquals(SeatStatus.AVAILABLE, updatedShowTime.getSeatStatus(seat),
            "Seat should return to available status after reservation timeout");
            
        // Verify the booking was marked as expired
        Booking updatedBooking = bookingRecorder.findBookingById(bookingId).orElse(null);
        assertNotNull(updatedBooking, "Booking should still exist after expiration");
        assertEquals(BookingStatus.EXPIRED, updatedBooking.getStatus(),
            "Booking should be marked as expired after timeout");
    }
    
    /**
     * I create a show time with all seats available for testing.
     */
    private ShowTime createShowTimeWithAvailableSeats() {
        // Create a movie
        Movie movie = new Movie(
            "Test Movie",
            120,
            LocalDate.now(),
            Set.of(MovieGenre.ACTION),
            "Test movie for testing.",
            Set.of(),
            Set.of()
        );
        
        // Create a theatre with a screen
        Theatre theatre = new Theatre(
            "Test Theatre",
            new Address("123 Test St", "Test City", "12345"),
            Set.of()
        );
        
        // Create a seat layout with test seats
        SeatLayout layout = new SeatLayout();
        for (char row = 'A'; row <= 'C'; row++) {
            for (int number = 1; number <= 5; number++) {
                SeatType type = theatre.getSeatType("STD");
                Seat seat = new Seat(row, number, type);
                layout.addSeat(seat);
            }
        }
        
        // Create a screen with the layout
        Screen screen = new Screen(
            "Screen 1",
            theatre,
            layout
        );
        
        // Create a show time for tomorrow (to ensure it's in the future)
        return new ShowTime(
            movie,
            screen,
            LocalDateTime.now().plusDays(1)
        );
    }
}

/**
 * I verify that the booking process enforces proper state transitions
 * and maintains consistency.
 * 
 * As BookingStateTransitionTests, I ensure that the booking process
 * respects its defined workflow and doesn't allow invalid transitions.
 */
public class BookingStateTransitionTests {
    @Test
    public void bookingFollowsProperLifecycle() {
        // Arrange - Create a new booking
        ShowTime showTime = createTestShowTime();
        Customer customer = new Customer("test_user", "password");
        Set<SeatCoordinate> seats = Set.of(new SeatCoordinate('A', 1));
        
        // Act & Assert - Verify the booking lifecycle
        
        // 1. New booking starts in INITIATED state
        Booking booking = new Booking(
            UUID.randomUUID(),
            showTime.getId(),
            seats,
            customer
        );
        
        assertEquals(BookingStatus.INITIATED, booking.getStatus(),
            "A new booking should start in INITIATED state");
        
        // 2. Can transition to PAYMENT_PENDING
        assertTrue(booking.markPaymentPending(),
            "Booking should transition to PAYMENT_PENDING from INITIATED");
        assertEquals(BookingStatus.PAYMENT_PENDING, booking.getStatus());
        
        // 3. Can't skip from PAYMENT_PENDING to COMPLETED
        assertFalse(booking.complete(),
            "Booking should not be able to skip from PAYMENT_PENDING to COMPLETED");
        assertEquals(BookingStatus.PAYMENT_PENDING, booking.getStatus(),
            "Booking status should remain unchanged after invalid transition attempt");
        
        // 4. Can confirm from PAYMENT_PENDING
        assertTrue(booking.confirm("TX123456"),
            "Booking should transition to CONFIRMED from PAYMENT_PENDING");
        assertEquals(BookingStatus.CONFIRMED, booking.getStatus());
        
        // 5. Can mark as completed
        assertTrue(booking.complete(),
            "Booking should transition to COMPLETED from CONFIRMED");
        assertEquals(BookingStatus.COMPLETED, booking.getStatus());
        
        // 6. Can't change status after completion
        assertFalse(booking.cancel("Requested by customer"),
            "Booking should not be able to be cancelled after completion");
        assertEquals(BookingStatus.COMPLETED, booking.getStatus(),
            "Booking status should remain COMPLETED after invalid transition attempt");
    }
    
    @Test
    public void bookingCanBeCancelledBeforeCompletion() {
        // Arrange - Create a booking in PAYMENT_PENDING state
        ShowTime showTime = createTestShowTime();
        Customer customer = new Customer("test_user", "password");
        Set<SeatCoordinate> seats = Set.of(new SeatCoordinate('A', 1));
        
        Booking booking = new Booking(
            UUID.randomUUID(),
            showTime.getId(),
            seats,
            customer
        );
        
        booking.markPaymentPending();
        
        // Act - Cancel the booking
        boolean result = booking.cancel("Requested by customer");
        
        // Assert - Verify cancellation worked
        assertTrue(result, "Booking should be cancellable from PAYMENT_PENDING state");
        assertEquals(BookingStatus.CANCELLED, booking.getStatus(),
            "Booking status should be CANCELLED after cancellation");
        assertEquals("Requested by customer", booking.getCancellationReason(),
            "Cancellation reason should be recorded");
    }
    
    @Test
    public void expiredBookingRecordsReasonAndTimestamp() {
        // Arrange - Create a booking in PAYMENT_PENDING state
        ShowTime showTime = createTestShowTime();
        Customer customer = new Customer("test_user", "password");
        Set<SeatCoordinate> seats = Set.of(new SeatCoordinate('A', 1));
        
        Booking booking = new Booking(
            UUID.randomUUID(),
            showTime.getId(),
            seats,
            customer
        );
        
        booking.markPaymentPending();
        
        // Record current time to compare with expiration timestamp
        LocalDateTime beforeExpiration = LocalDateTime.now();
        
        // Act - Expire the booking
        boolean result = booking.expire("Payment timeout");
        
        // Record time after expiration
        LocalDateTime afterExpiration = LocalDateTime.now();
        
        // Assert - Verify expiration worked correctly
        assertTrue(result, "Booking should be expirable from PAYMENT_PENDING state");
        assertEquals(BookingStatus.EXPIRED, booking.getStatus(),
            "Booking status should be EXPIRED after expiration");
        assertEquals("Payment timeout", booking.getCancellationReason(),
            "Expiration reason should be recorded");
        
        // Verify expiration timestamp
        LocalDateTime expirationTime = booking.getStatusChangeTime();
        assertNotNull(expirationTime, "Expiration time should be recorded");
        
        // Timestamp should be between before and after measurements
        assertTrue(expirationTime.isAfter(beforeExpiration) || expirationTime.equals(beforeExpiration),
            "Expiration timestamp should be after or equal to time before expiration");
        assertTrue(expirationTime.isBefore(afterExpiration) || expirationTime.equals(afterExpiration),
            "Expiration timestamp should be before or equal to time after expiration");
    }
    
    /**
     * I create a test show time for booking tests.
     */
    private ShowTime createTestShowTime() {
        // Simplified version of test show time creation
        Movie movie = new Movie(
            "Test Movie",
            120,
            LocalDate.now(),
            Set.of(MovieGenre.ACTION),
            "Test movie for testing.",
            Set.of(),
            Set.of()
        );
        
        Screen screen = new Screen(
            "Screen 1",
            new Theatre(
                "Test Theatre",
                new Address("123 Test St", "Test City", "12345"),
                Set.of()
            ),
            new SeatLayout()
        );
        
        return new ShowTime(
            movie,
            screen,
            LocalDateTime.now().plusDays(1)
        );
    }
}

/**
 * I verify that the narrative structure of the booking coordinator
 * performs each step of the booking journey correctly.
 * 
 * As BookingNarrativeTests, I ensure that the booking story unfolds
 * properly from beginning to end, with each chapter handled correctly.
 */
public class BookingNarrativeTests {
    @Test
    public void completeBookingJourneySucceeds() {
        // Arrange - Set up all the actors in our booking story
        ShowTimeAuthority showTimeAuthority = new ShowTimeAuthority();
        PaymentProcessor paymentProcessor = new MockPaymentProcessor(true); // Always succeeds
        BookingRecorder bookingRecorder = new BookingRecorder();
        CustomerNotifier customerNotifier = new MockCustomerNotifier();
        
        BookingCoordinator coordinator = new BookingCoordinator(
            showTimeAuthority,
            paymentProcessor,
            bookingRecorder,
            customerNotifier
        );
        
        // Create a show time with available seats
        ShowTime showTime = createTestShowTime();
        showTimeAuthority.registerShowTime(showTime);
        
        // Create a booking request
        Customer customer = new Customer("test_user", "password");
        Set<SeatCoordinate> seats = Set.of(new SeatCoordinate('A', 1));
        PaymentMethod paymentMethod = new CreditCard("4111111111111111", "12/25", "123");
        
        BookingRequest request = new BookingRequest(
            showTime.getId(),
            seats,
            customer,
            paymentMethod
        );
        
        // Act - Process the booking
        BookingResult result = coordinator.bookSeats(request);
        
        // Assert - Verify each chapter of the booking story happened correctly
        
        // 1. The overall booking should succeed
        assertTrue(result.isSuccessful(),
            "The complete booking journey should end successfully");
        
        // 2. A booking record should be created and confirmed
        Booking booking = result.getBooking();
        assertNotNull(booking, "A booking object should be created");
        assertEquals(BookingStatus.CONFIRMED, booking.getStatus(),
            "The booking should end in CONFIRMED status");
        
        // 3. The seats should be marked as booked
        ShowTime updatedShowTime = showTimeAuthority.findShowTime(showTime.getId());
        seats.forEach(seat -> {
            assertEquals(SeatStatus.BOOKED, updatedShowTime.getSeatStatus(seat),
                "Each selected seat should be marked as BOOKED");
        });
        
        // 4. The customer should be notified
        MockCustomerNotifier mockNotifier = (MockCustomerNotifier) customerNotifier;
        assertTrue(mockNotifier.wasConfirmationSent(),
            "A confirmation notification should be sent to the customer");
        assertEquals(booking.getId(), mockNotifier.getLastBookingId(),
            "The confirmation should be for the correct booking");
        
        // 5. The payment should be processed
        MockPaymentProcessor mockProcessor = (MockPaymentProcessor) paymentProcessor;
        assertTrue(mockProcessor.wasPaymentProcessed(),
            "The payment should be processed");
        assertEquals(paymentMethod, mockProcessor.getLastPaymentMethod(),
            "The correct payment method should be used");
    }
    
    @Test
    public void bookingJourneyFailsWhenSeatsUnavailable() {
        // Arrange - Set up the booking system
        ShowTimeAuthority showTimeAuthority = new ShowTimeAuthority();
        PaymentProcessor paymentProcessor = new MockPaymentProcessor(true);
        BookingRecorder bookingRecorder = new BookingRecorder();
        CustomerNotifier customerNotifier = new MockCustomerNotifier();
        
        BookingCoordinator coordinator = new BookingCoordinator(
            showTimeAuthority,
            paymentProcessor,
            bookingRecorder,
            customerNotifier
        );
        
        // Create a show time with one seat already reserved
        ShowTime showTime = createTestShowTime();
        SeatCoordinate targetSeat = new SeatCoordinate('A', 1);
        showTime.reserveSeat(targetSeat, UUID.randomUUID());
        showTimeAuthority.registerShowTime(showTime);
        
        // Create a booking request for the same seat
        Customer customer = new Customer("test_user", "password");
        Set<SeatCoordinate> seats = Set.of(targetSeat);
        PaymentMethod paymentMethod = new CreditCard("4111111111111111", "12/25", "123");
        
        BookingRequest request = new BookingRequest(
            showTime.getId(),
            seats,
            customer,
            paymentMethod
        );
        
        // Act - Attempt to process the booking
        BookingResult result = coordinator.bookSeats(request);
        
        // Assert - Verify the booking journey fails appropriately
        
        // 1. The booking should fail
        assertFalse(result.isSuccessful(),
            "The booking journey should fail when seats are unavailable");
        
        // 2. The failure reason should be about seat availability
        assertEquals(BookingFailureReason.SEATS_UNAVAILABLE, result.getFailureReason(),
            "The failure reason should indicate unavailable seats");
        
        // 3. No payment should be attempted
        MockPaymentProcessor mockProcessor = (MockPaymentProcessor) paymentProcessor;
        assertFalse(mockProcessor.wasPaymentProcessed(),
            "No payment should be processed when seats are unavailable");
        
        // 4. No notification should be sent
        MockCustomerNotifier mockNotifier = (MockCustomerNotifier) customerNotifier;
        assertFalse(mockNotifier.wasConfirmationSent(),
            "No confirmation should be sent when booking fails");
    }
    
    @Test
    public void bookingJourneyFailsWhenPaymentFails() {
        // Arrange - Set up the booking system with a failing payment processor
        ShowTimeAuthority showTimeAuthority = new ShowTimeAuthority();
        PaymentProcessor paymentProcessor = new MockPaymentProcessor(false); // Always fails
        BookingRecorder bookingRecorder = new BookingRecorder();
        CustomerNotifier customerNotifier = new MockCustomerNotifier();
        
        BookingCoordinator coordinator = new BookingCoordinator(
            showTimeAuthority,
            paymentProcessor,
            bookingRecorder,
            customerNotifier
        );
        
        // Create a show time with available seats
        ShowTime showTime = createTestShowTime();
        showTimeAuthority.registerShowTime(showTime);
        
        // Create a booking request
        Customer customer = new Customer("test_user", "password");
        Set<SeatCoordinate> seats = Set.of(new SeatCoordinate('A', 1));
        PaymentMethod paymentMethod = new CreditCard("4111111111111111", "12/25", "123");
        
        BookingRequest request = new BookingRequest(
            showTime.getId(),
            seats,
            customer,
            paymentMethod
        );
        
        // Act - Attempt to process the booking
        BookingResult result = coordinator.bookSeats(request);
        
        // Assert - Verify the booking journey fails appropriately at payment
        
        // 1. The booking should fail
        assertFalse(result.isSuccessful(),
            "The booking journey should fail when payment fails");
        
        // 2. The failure reason should be about payment
        assertEquals(BookingFailureReason.PAYMENT_FAILED, result.getFailureReason(),
            "The failure reason should indicate payment failure");
        
        // 3. The seats should be released
        ShowTime updatedShowTime = showTimeAuthority.findShowTime(showTime.getId());
        seats.forEach(seat -> {
            assertEquals(SeatStatus.AVAILABLE, updatedShowTime.getSeatStatus(seat),
                "Seats should be released after payment failure");
        });
        
        // 4. No confirmation should be sent
        MockCustomerNotifier mockNotifier = (MockCustomerNotifier) customerNotifier;
        assertFalse(mockNotifier.wasConfirmationSent(),
            "No confirmation should be sent when payment fails");
    }
    
    /**
     * I create a test show time for booking tests.
     */
    private ShowTime createTestShowTime() {
        // Simplified version of test show time creation
        // Same implementation as in BookingStateTransitionTests
        Movie movie = new Movie(
            "Test Movie",
            120,
            LocalDate.now(),
            Set.of(MovieGenre.ACTION),
            "Test movie for testing.",
            Set.of(),
            Set.of()
        );
        
        Screen screen = new Screen(
            "Screen 1",
            new Theatre(
                "Test Theatre",
                new Address("123 Test St", "Test City", "12345"),
                Set.of()
            ),
            new SeatLayout()
        );
        
        return new ShowTime(
            movie,
            screen,
            LocalDateTime.now().plusDays(1)
        );
    }
}
```

These test classes truly embody the philosophical approach to testing. The ConcurrentBookingTests verify that authority boundaries are maintained even under concurrent pressure. The BookingStateTransitionTests ensure that entities progress through their lifecycle according to proper rules. The BookingNarrativeTests verify that the complete story of booking unfolds correctly from beginning to end.

## Putting It All Together: A Complete Booking Example

Let's see how these philosophically-designed components work together by walking through a complete booking scenario:

```java
/**
 * This example demonstrates how the philosophically-designed components
 * work together to create a complete booking experience that respects
 * proper authority boundaries, maintains entity identity, and tells
 * a coherent story.
 */
public class CompleteBookingExample {
    public static void main(String[] args) {
        // Initialize the system
        SystemInitializer initializer = new SystemInitializer();
        initializer.initialize();
        
        // Get the initialized components
        ShowTimeAuthority showTimeAuthority = initializer.getShowTimeAuthority();
        BookingCoordinator bookingCoordinator = initializer.getBookingCoordinator();
        
        // Find a show time for a specific movie
        Optional<Movie> movie = initializer.getMovieCatalog().findByTitle("Inception");
        if (movie.isEmpty()) {
            System.out.println("Movie not found");
            return;
        }
        
        Optional<ShowTime> showTime = showTimeAuthority.findShowTimesForMovie(movie.get())
            .stream()
            .findFirst();
            
        if (showTime.isEmpty()) {
            System.out.println("No show times available for this movie");
            return;
        }
        
        // Display the seating layout
        SeatLayoutVisualizer visualizer = new AsciiSeatLayoutVisualizer();
        SeatVisualization visualization = visualizer.createVisualization(
            showTime.get().getScreen().getSeatLayout(),
            showTime.get().getSeatStatusSnapshot()
        );
        
        System.out.println("Seat Layout:");
        System.out.println(visualization.getContent());
        
        // Select seats for booking
        SeatSelectionProcessor selectionProcessor = new SeatSelectionProcessor(
            showTime.get().getId(),
            showTimeAuthority,
            initializer.getPricingStrategyFactory().createStrategyFor(showTime.get())
        );
        
        // Select some seats
        SeatCoordinate seat1 = new SeatCoordinate('B', 3);
        SeatCoordinate seat2 = new SeatCoordinate('B', 4);
        
        SeatSelectionResult result1 = selectionProcessor.selectSeat(seat1);
        SeatSelectionResult result2 = selectionProcessor.selectSeat(seat2);
        
        if (!result1.isSuccessful() || !result2.isSuccessful()) {
            System.out.println("Failed to select seats: " + 
                (result1.isSuccessful() ? "" : result1.getMessage()) + 
                (result2.isSuccessful() ? "" : result2.getMessage()));
            return;
        }
        
        System.out.println("Selected seats: " + 
            selectionProcessor.getSelectedSeats().stream()
                .map(seat -> seat.getRow() + String.valueOf(seat.getNumber()))
                .collect(Collectors.joining(", ")));
                
        System.out.println("Total price: " + selectionProcessor.getCurrentTotalPrice());
        
        // Create a customer
        Customer customer = new Customer("john_doe", "password");
        customer.updateProfile(
            new Person("John", "Doe", LocalDate.of(1980, 1, 1), Gender.MALE),
            new EmailAddress("john.doe@example.com"),
            new PhoneNumber("+1-555-123-4567")
        );
        
        // Create a payment method
        PaymentMethod paymentMethod = new CreditCard(
            "4111111111111111", // Card number
            "12/25", // Expiry
            "123" // CVV
        );
        
        // Create a booking request
        BookingRequest bookingRequest = new BookingRequest(
            showTime.get().getId(),
            selectionProcessor.getSelectedSeats(),
            customer,
            paymentMethod
        );
        
        // Process the booking
        BookingResult bookingResult = bookingCoordinator.bookSeats(bookingRequest);
        
        // Display the result
        if (bookingResult.isSuccessful()) {
            Booking booking = bookingResult.getBooking();
            
            System.out.println("\nBooking Successful!");
            System.out.println("Booking ID: " + booking.getId());
            System.out.println("Status: " + booking.getStatus());
            System.out.println("Movie: " + booking.getShowTime().getMovie().getTitle());
            System.out.println("Date: " + booking.getShowTime().getStartTime().format(
                DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy")));
            System.out.println("Time: " + booking.getShowTime().getStartTime().format(
                DateTimeFormatter.ofPattern("h:mm a")));
            System.out.println("Theatre: " + booking.getShowTime().getScreen().getTheatre().getName());
            System.out.println("Screen: " + booking.getShowTime().getScreen().getName());
            System.out.println("Seats: " + booking.getSeats().stream()
                .map(seat -> seat.getRow() + String.valueOf(seat.getNumber()))
                .collect(Collectors.joining(", ")));
            System.out.println("Total Paid: " + bookingResult.getTotalAmount());
        } else {
            System.out.println("\nBooking Failed: " + bookingResult.getMessage());
        }
    }
}
```

This example shows how the various components work together to create a complete booking experience. Each component maintains its philosophical integrity:

1. The Movie maintains its immutable identity
2. The ShowTime controls access to its seats
3. The SeatSelectionProcessor ensures seats are selected in a valid way
4. The BookingCoordinator orchestrates the booking narrative
5. The Customer controls access to their personal information
6. The various visualizers provide appropriate representations for different contexts

Throughout the process, authority boundaries are respected, identity is maintained, and the code tells a coherent story about the booking journey.

## Conclusion: The Power of Philosophical Programming

By truly embodying the philosophical principles we've explored, we've created a movie ticketing system that is not just functional but conceptually coherent and aligned with reality. The code is more readable, maintainable, and robust because it accurately reflects the true nature of the entities involved, their relationships, and their behaviors.

When developers embrace philosophical programming:

1. **Classes become more than data containers** - They become digital entities with identity, authority, and responsibility
2. **Methods tell coherent stories** - Each method has a clear, singular purpose in the larger narrative
3. **Relationships reflect real-world patterns** - Authority boundaries and information access follow natural patterns
4. **Code becomes self-documenting** - The philosophical intent is clear from the structure and naming
5. **Testing verifies conceptual integrity** - Tests ensure not just functionality but philosophical alignment

This approach transforms programming from a technical exercise into a form of digital philosophy—creating faithful digital representations of real-world concepts that maintain their essential nature even in code. The result is a system that is not just technically sound but deeply meaningful and intuitive to both developers and users.


Throughout this book, we've explored programming not merely as a technical discipline but as a philosophical endeavor—a way of thinking about, modeling, and creating digital realities that faithfully represent the concepts, constraints, and behaviors of the domains we work with.

## The Transformative Power of Philosophical Programming

The philosophical approach to programming transforms how we design, implement, and maintain software systems:

### From Technical to Conceptual

Traditional programming focuses on technical concerns: efficiency, syntax, patterns, and frameworks. While these remain important, philosophical programming elevates the focus to conceptual concerns: identity, authority, semantics, and conceptual integrity. This shift leads to systems that are not just technically sound but conceptually coherent.

### From Arbitrary to Principled

Where traditional approaches might make arbitrary technical decisions, philosophical programming makes principled decisions based on deep understanding of the domain. Types aren't just containers for data; they're semantic boundaries that reflect real-world constraints. Methods aren't just functions; they're behaviors that reflect the true nature of the entities they belong to.

### From Brittle to Robust

Systems built with philosophical principles tend to be more robust because they respect the inherent constraints and behaviors of the domain. When a system accurately models reality, it naturally avoids many of the edge cases and inconsistencies that plague more mechanically designed systems.

## The Core Philosophical Principles Revisited

Let's revisit the core philosophical principles that guide this approach:

### Class Impersonation

By mentally stepping into the role of the classes we design, we gain insights into their true nature, responsibilities, and relationships. This empathetic modeling leads to more coherent, intuitive designs that respect the essential characteristics of the entities we're modeling.

### True Encapsulation and Authority

Moving beyond syntactic privacy to embrace authority-based information control creates systems that reflect real-world information access patterns. Just as people share different information with different parties based on established relationships, our objects should control access to their information based on the authority of the requestor.

### Semantic Type Selection

Choosing types based on their semantic meaning rather than technical convenience creates systems that enforce domain constraints at the type level. Using enums for closed categories, creating domain-specific types for complex concepts, and maintaining type-safe boundaries all contribute to systems that respect the semantic integrity of the domain.

### Immutable Core Identity

Recognizing and protecting the aspects of an entity that define its fundamental identity creates systems that respect the nature of identity and change. Immutable core attributes, controlled state transitions, and defensive copying are technical mechanisms that enforce philosophical integrity.

### Domain-Driven Flexibility

Balancing rigidity and flexibility through type-safe extensibility, domain registries, bounded contexts, and other patterns creates systems that can adapt to evolving requirements while maintaining conceptual integrity.

## The Art of Philosophical Programming

Programming with a philosophical mindset is more art than science. It requires not just technical knowledge but deep domain understanding, conceptual thinking, and a keen sense of what constitutes the essence of the entities being modeled.

The philosophical programmer asks different questions:

- Not just "How should I implement this?" but "What is the true nature of this concept?"
- Not just "What fields should this class have?" but "What defines this entity's identity?"
- Not just "Who will call this method?" but "Who has the authority to perform this action?"
- Not just "What type should I use?" but "What semantic constraints should this type enforce?"

These deeper questions lead to designs that are not just technically correct but conceptually sound—designs that reflect the true nature of the domain being modeled.

## The Ongoing Journey

The journey of philosophical programming never ends because our understanding of domains continually evolves. As we gain deeper insights into the domains we model, our designs should evolve to reflect this deeper understanding.

This evolution isn't just about adding features or fixing bugs; it's about refining our conceptual models to more accurately represent reality. Renaming a class or method isn't just a refactoring operation; it's a conceptual realignment that reflects a deeper understanding of the domain.

## The Call to Philosophical Programming

As developers, we have the power to create digital realities. With that power comes the responsibility to create realities that are faithful to the domains they represent—realities that respect the true nature of the entities, relationships, and behaviors they model.

The philosophical approach to programming invites us to embrace this responsibility—to move beyond mechanical code production to thoughtful reality creation. It challenges us to think deeply about the digital worlds we create and to ensure that they reflect the profound conceptual richness of the domains they represent.

By adopting this philosophical mindset, we not only create better software systems but also deepen our understanding of the domains we work with and the nature of reality itself. In this sense, programming becomes not just a technical activity but a philosophical inquiry—a way of exploring and understanding the world through the creation of digital models.

The movie ticketing system we've explored throughout this book is just one example of how philosophical programming can transform a seemingly mundane system into a rich, coherent model that respects the true nature of movies, theatres, seats, bookings, and the relationships between them. This same approach can be applied to any domain, from finance to healthcare, from e-commerce to social networks.

As you continue your journey as a developer, I encourage you to embrace the philosophical dimension of programming—to see each class you create, each method you write, and each type you define as not just a technical construct but a philosophical statement about the nature of the reality you're modeling. In doing so, you'll not only become a better programmer but a deeper thinker and a more effective modeler of reality.

May your code not just work but speak truth about the world it represents.
