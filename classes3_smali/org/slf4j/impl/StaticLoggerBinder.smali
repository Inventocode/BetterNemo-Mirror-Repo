.class public Lorg/slf4j/impl/StaticLoggerBinder;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"


# static fields
.field public static REQUESTED_API_VERSION:Ljava/lang/String;

.field private static final SINGLETON:Lorg/slf4j/impl/StaticLoggerBinder;

.field private static final loggerFactoryClassStr:Ljava/lang/String;


# instance fields
.field private final loggerFactory:Lorg/slf4j/ILoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lorg/slf4j/impl/StaticLoggerBinder;

    invoke-direct {v0}, Lorg/slf4j/impl/StaticLoggerBinder;-><init>()V

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->SINGLETON:Lorg/slf4j/impl/StaticLoggerBinder;

    const-string v0, "1.6.99"

    .line 59
    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 61
    const-class v0, Lorg/slf4j/impl/AndroidLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactoryClassStr:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/slf4j/impl/AndroidLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/impl/AndroidLoggerFactory;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    return-void
.end method

.method public static getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;
    .registers 1

    .line 51
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->SINGLETON:Lorg/slf4j/impl/StaticLoggerBinder;

    return-object v0
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .registers 2

    .line 74
    iget-object v0, p0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactory:Lorg/slf4j/ILoggerFactory;

    return-object v0
.end method

.method public getLoggerFactoryClassStr()Ljava/lang/String;
    .registers 2

    .line 78
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->loggerFactoryClassStr:Ljava/lang/String;

    return-object v0
.end method
