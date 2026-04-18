.class public Lcom/arthenica/smartexception/java/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field static classLoader:Lcom/arthenica/smartexception/ClassLoader;

.field static packageLoader:Lcom/arthenica/smartexception/PackageLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/arthenica/smartexception/java/JavaPackageLoader;

    invoke-direct {v0}, Lcom/arthenica/smartexception/java/JavaPackageLoader;-><init>()V

    sput-object v0, Lcom/arthenica/smartexception/java/Exceptions;->packageLoader:Lcom/arthenica/smartexception/PackageLoader;

    .line 51
    new-instance v0, Lcom/arthenica/smartexception/java/JavaClassLoader;

    invoke-direct {v0}, Lcom/arthenica/smartexception/java/JavaClassLoader;-><init>()V

    sput-object v0, Lcom/arthenica/smartexception/java/Exceptions;->classLoader:Lcom/arthenica/smartexception/ClassLoader;

    .line 53
    new-instance v0, Lcom/arthenica/smartexception/java/JavaStackTraceElementSerializer;

    invoke-direct {v0}, Lcom/arthenica/smartexception/java/JavaStackTraceElementSerializer;-><init>()V

    invoke-static {v0}, Lcom/arthenica/smartexception/AbstractExceptions;->setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 205
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerRootPackage(Ljava/lang/String;)V
    .registers 1

    .line 66
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->registerRootPackage(Ljava/lang/String;)V

    return-void
.end method
