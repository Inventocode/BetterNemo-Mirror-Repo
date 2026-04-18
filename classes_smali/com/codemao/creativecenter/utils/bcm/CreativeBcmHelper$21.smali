.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;
.super Lcom/codemao/creativecenter/http/CommonSubcriber;
.source "CreativeBcmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcmCloudHistory(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/http/CommonSubcriber<",
        "Ljava/util/List<",
        "Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;


# direct methods
.method public static synthetic $r8$lambda$k05UU3WKG8h0O7yGne5Pr3wIX4I(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;->lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;)V
    .registers 2

    .line 2598
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;

    invoke-direct {p0}, Lcom/codemao/creativecenter/http/CommonSubcriber;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onSuccess$0(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;Ljava/util/List;)V
    .registers 2

    .line 2602
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;->onSuccess(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2610
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1900()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2615
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;

    const-string/jumbo p2, "网络错误，请确认后再试"

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;->onError(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 2598
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;",
            ">;)V"
        }
    .end annotation

    .line 2602
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;Ljava/util/List;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 2604
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method
