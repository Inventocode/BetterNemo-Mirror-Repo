.class Lorg/slf4j/impl/AndroidLoggerFactory;
.super Ljava/lang/Object;
.source "AndroidLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field private final loggerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2e

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x17

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1a

    add-int/lit8 v1, v1, 0x1

    sub-int v3, v0, v1

    if-gt v3, v2, :cond_1a

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_32
    return-object p0
.end method

.method static loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 78
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_e

    return-object p0

    .line 86
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_17
    const/16 v5, 0x2e

    .line 87
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_41

    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v3, v6, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_31

    const/16 v3, 0x2a

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_31
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v6, 0x1

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v1, :cond_17

    .line 100
    invoke-static {p0}, Lorg/slf4j/impl/AndroidLoggerFactory;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    sub-int v5, v0, v3

    if-eqz v4, :cond_51

    add-int/2addr v4, v5

    if-le v4, v1, :cond_49

    goto :goto_51

    .line 112
    :cond_49
    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_51
    :goto_51
    invoke-static {p0}, Lorg/slf4j/impl/AndroidLoggerFactory;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .registers 4

    .line 49
    invoke-static {p1}, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    if-nez v0, :cond_1f

    .line 52
    new-instance v0, Lorg/slf4j/impl/AndroidLoggerAdapter;

    invoke-direct {v0, p1}, Lorg/slf4j/impl/AndroidLoggerAdapter;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lorg/slf4j/impl/AndroidLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/slf4j/Logger;

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v0, p1

    :cond_1f
    :goto_1f
    return-object v0
.end method
