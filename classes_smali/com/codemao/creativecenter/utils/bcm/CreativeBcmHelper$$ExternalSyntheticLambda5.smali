.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->$r8$lambda$NUufgpKPRb0D7zXM8ga92hzYW0k(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V

    return-void
.end method
