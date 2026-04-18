.class public final Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkChangedReceiver"
.end annotation


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/blankj/utilcode/util/NetworkUtils$OnNetworkStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 867
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 874
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 2

    .line 867
    iput-object p1, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mType:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    return-object p1
.end method

.method static synthetic access$900(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 915
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 917
    new-instance p1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;

    invoke-direct {p1, p0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$3;-><init>(Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_16
    return-void
.end method
