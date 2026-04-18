.class public final Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CuNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/utils/util/CuNetworkUtils;
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
            "Lcom/codemao/utils/util/CuNetworkUtils$OnNetworkStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 887
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 894
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;
    .registers 1

    .line 887
    iget-object p0, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->mType:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;)Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;
    .registers 2

    .line 887
    iput-object p1, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->mType:Lcom/codemao/utils/util/CuNetworkUtils$NetworkType;

    return-object p1
.end method

.method static synthetic access$900(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;
    .registers 1

    .line 887
    iget-object p0, p0, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;->mListeners:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 935
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 937
    new-instance p1, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;

    invoke-direct {p1, p0}, Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver$3;-><init>(Lcom/codemao/utils/util/CuNetworkUtils$NetworkChangedReceiver;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/codemao/utils/util/CuBridgeUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_16
    return-void
.end method
