.class public final synthetic Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->$r8$lambda$fQqihVKtMDG3z5rZcy64LoYYiV8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
