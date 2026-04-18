.class public final Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;
.super Ljava/lang/Object;
.source "PythonMobileTimerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;

.field private static localListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;",
            ">;"
        }
    .end annotation
.end field

.field private static localSubscribe:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->INSTANCE:Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->localListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelTimer$toolssdk_release()V
    .registers 2

    .line 62
    sget-object v0, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->localSubscribe:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    return-void
.end method

.method public final removeListener$toolssdk_release(Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->localListeners:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_c
    sget-object p1, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->localListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 83
    invoke-virtual {p0}, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->cancelTimer$toolssdk_release()V

    :cond_17
    return-void
.end method
