.class Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;
.super Ljava/lang/Object;
.source "BaseSearchActivity_ViewBinding.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 79
    iput-object p2, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/activity/BaseSearchActivity;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding$5;->val$target:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
