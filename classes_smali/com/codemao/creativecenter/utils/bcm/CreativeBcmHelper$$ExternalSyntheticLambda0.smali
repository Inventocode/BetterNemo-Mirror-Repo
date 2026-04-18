.class public final synthetic Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/storage/UpCancellationSignal;


# instance fields
.field public final synthetic f$0:Lretrofit2/Call;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/Call;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda0;->f$0:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda0;->f$0:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method
