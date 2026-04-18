.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;->$r8$lambda$k05UU3WKG8h0O7yGne5Pr3wIX4I(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;Ljava/util/List;)V

    return-void
.end method
