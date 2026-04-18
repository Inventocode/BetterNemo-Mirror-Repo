.class public final Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;
.super Ljava/lang/Object;
.source "PrivacyDataManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDataManager.kt\ncom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager\n*L\n1#1,39:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;

.field private static liveItemPrivacy:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ">;"
        }
    .end annotation
.end field

.field private static privacyFunBeanList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->INSTANCE:Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->privacyFunBeanList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->liveItemPrivacy:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addData(Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;)V
    .registers 3

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->privacyFunBeanList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->liveItemPrivacy:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getFunBeanList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->privacyFunBeanList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 31
    sget-object v0, Lcom/yl/lib/sentry/hook/watcher/PrivacyDataManager$Manager;->privacyFunBeanList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
