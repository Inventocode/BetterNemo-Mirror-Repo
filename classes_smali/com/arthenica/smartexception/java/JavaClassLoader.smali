.class public Lcom/arthenica/smartexception/java/JavaClassLoader;
.super Ljava/lang/Object;
.source "JavaClassLoader.java"

# interfaces
.implements Lcom/arthenica/smartexception/ClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    .line 50
    :catch_f
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_19} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_1a
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_19} :catch_1a

    return-object p1

    .line 58
    :catch_1a
    :cond_1a
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljava/lang/LinkageError; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    const/4 p1, 0x0

    return-object p1
.end method
