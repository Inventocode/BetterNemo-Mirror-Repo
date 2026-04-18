.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;->f$0:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;->$r8$lambda$kxDKrJm9L1Axx3fMdyUqhNB6nYQ(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method
