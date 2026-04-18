.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

.field public final synthetic f$1:Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->$r8$lambda$FDaUWExy-9Q-vioQV5T9DBhhoD0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/UploadResponse;)V

    return-void
.end method
