.class public final synthetic Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/codemao/android/account/listener/NetFailResultListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/LoginActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/nemo/activity/LoginActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;->f$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget v1, p0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/codemao/nemo/activity/LoginActivity;->$r8$lambda$X-vC1KpNBt5isAE7GLzoqwNwLLk(Lcom/codemao/nemo/activity/LoginActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
