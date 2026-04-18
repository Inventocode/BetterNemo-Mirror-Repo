.class public Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CoverEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CoverEditActivity;Landroid/view/View;)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0821

    const-string v1, "method \'saveBitmap\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding;Lcom/codemao/nemo/activity/CoverEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a080c

    const-string v1, "method \'cancel\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/CoverEditActivity_ViewBinding;Lcom/codemao/nemo/activity/CoverEditActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
