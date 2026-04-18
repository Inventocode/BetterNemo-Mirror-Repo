.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

.field public final synthetic f$1:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->$r8$lambda$8ZaFRptPO2MIHNmxjtesmFSFEzo(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
