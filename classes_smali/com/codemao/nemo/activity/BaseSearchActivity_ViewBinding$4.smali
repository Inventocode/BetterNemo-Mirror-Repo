.class Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$4;
.super Ljava/lang/Object;
.source "BaseSearchActivity_ViewBinding.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;Lcom/codemao/nemo/activity/BaseSearchActivity;)V
    .registers 3

    .line 73
    iput-object p2, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$4;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
