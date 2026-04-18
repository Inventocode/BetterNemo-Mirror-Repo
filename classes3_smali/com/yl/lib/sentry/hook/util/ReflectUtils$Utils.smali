.class public final Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;
.super Ljava/lang/Object;
.source "ReflectUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;->INSTANCE:Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 32
    :try_start_0
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    nop

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_17
    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez p2, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    invoke-direct {p0, v0, p2, p3}, Lcom/yl/lib/sentry/hook/util/ReflectUtils$Utils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_30

    const/4 p3, 0x1

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    array-length p3, p4

    invoke-static {p4, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method
