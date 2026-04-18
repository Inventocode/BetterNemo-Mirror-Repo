.class public final synthetic Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->$r8$lambda$1nVeO_Cb8ZMSVSaVEmFzxAb1VQk(Landroid/content/Context;I)V

    return-void
.end method
