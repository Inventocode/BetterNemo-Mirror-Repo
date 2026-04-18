.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    invoke-interface {v0}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onIlleagal()V

    return-void
.end method
