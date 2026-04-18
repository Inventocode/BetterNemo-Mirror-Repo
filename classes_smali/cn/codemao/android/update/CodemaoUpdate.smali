.class public Lcn/codemao/android/update/CodemaoUpdate;
.super Ljava/lang/Object;
.source "CodemaoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/update/CodemaoUpdate$Builder;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

.field public static scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mPid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    .line 22
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/update/CodemaoUpdate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcn/codemao/android/update/CodemaoUpdate;->mPid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;ZLcn/codemao/android/update/CodemaoUpdate$1;)V
    .registers 6

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/codemao/android/update/CodemaoUpdate;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public cancel()Lcn/codemao/android/update/CodemaoUpdate;
    .registers 2

    .line 59
    invoke-static {}, Lcn/codemao/android/update/net/UpdateIml;->instance()Lcn/codemao/android/update/net/UpdateIml;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/update/net/UpdateIml;->cancel()V

    return-object p0
.end method

.method public download(Landroid/os/Handler;)Lcn/codemao/android/update/CodemaoUpdate;
    .registers 3

    .line 54
    invoke-static {}, Lcn/codemao/android/update/net/UpdateIml;->instance()Lcn/codemao/android/update/net/UpdateIml;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/update/net/UpdateIml;->download(Landroid/os/Handler;)V

    return-object p0
.end method

.method public install()Lcn/codemao/android/update/CodemaoUpdate;
    .registers 2

    .line 64
    invoke-static {}, Lcn/codemao/android/update/net/UpdateIml;->instance()Lcn/codemao/android/update/net/UpdateIml;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/update/net/UpdateIml;->install()V

    return-object p0
.end method

.method public update(Lcn/codemao/android/update/listener/NetResultListener;)Lcn/codemao/android/update/CodemaoUpdate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/update/listener/NetResultListener<",
            "Lcn/codemao/android/update/vo/UpdateResultVO;",
            ">;)",
            "Lcn/codemao/android/update/CodemaoUpdate;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lcn/codemao/android/update/net/UpdateIml;->instance()Lcn/codemao/android/update/net/UpdateIml;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/update/net/UpdateIml;->getUpdateData(Lcn/codemao/android/update/listener/NetResultListener;Z)V

    return-object p0
.end method

.method public update2(Lcn/codemao/android/update/listener/NetResultListener;)Lcn/codemao/android/update/CodemaoUpdate;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/update/listener/NetResultListener<",
            "Lcn/codemao/android/update/vo/UpdateResultVO;",
            ">;)",
            "Lcn/codemao/android/update/CodemaoUpdate;"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcn/codemao/android/update/net/UpdateIml;->instance()Lcn/codemao/android/update/net/UpdateIml;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/update/net/UpdateIml;->getUpdateData(Lcn/codemao/android/update/listener/NetResultListener;Z)V

    return-object p0
.end method
