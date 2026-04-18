.class public final Lcom/ljwx/basedialog/common/BaseDialogBuilder;
.super Ljava/lang/Object;
.source "BaseDialogBuilder.kt"

# interfaces
.implements Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;


# instance fields
.field private buttonsReversal:Z

.field private content:Ljava/lang/String;

.field private contentId:Ljava/lang/Integer;

.field private dialog:Lcom/ljwx/basedialog/dialog/BaseDialog;

.field private dialogFragment:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

.field private negativeListener:Landroid/view/View$OnClickListener;

.field private negativeText:Ljava/lang/CharSequence;

.field private positiveListener:Landroid/view/View$OnClickListener;

.field private positiveText:Ljava/lang/CharSequence;

.field private rootLayout:Ljava/lang/Integer;

.field private showClose:Ljava/lang/Boolean;

.field private showNegativeButton:Z

.field private showPositiveButton:Z

.field private showTitle:Z

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buttonsReversal(Z)V
    .registers 2

    .line 130
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->buttonsReversal:Z

    return-void
.end method

.method public createDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialog:Lcom/ljwx/basedialog/dialog/BaseDialog;

    if-nez v0, :cond_18

    new-instance v0, Lcom/ljwx/basedialog/dialog/BaseDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/basedialog/dialog/BaseDialog;-><init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setBuilder(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialog/BaseDialog;

    move-result-object v0

    .line 135
    :cond_18
    invoke-virtual {v0}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setDataFromBuilder()V

    const/4 p1, 0x0

    .line 136
    invoke-virtual {v0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public bridge synthetic createDialogFragment()Landroidx/fragment/app/DialogFragment;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->createDialogFragment()Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public createDialogFragment()Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialogFragment:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    if-nez v0, :cond_d

    new-instance v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    invoke-direct {v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setBuilder$basedialog_release(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public final getButtonsReversal()Z
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->buttonsReversal:Z

    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentId()Ljava/lang/Integer;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNegativeListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->negativeListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getNegativeText()Ljava/lang/CharSequence;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->negativeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getPositiveListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->positiveListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getPositiveText()Ljava/lang/CharSequence;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->positiveText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getRootLayout()Ljava/lang/Integer;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->rootLayout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getShowClose()Ljava/lang/Boolean;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showClose:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getShowNegativeButton()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showNegativeButton:Z

    return v0
.end method

.method public final getShowPositiveButton()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showPositiveButton:Z

    return v0
.end method

.method public final getShowTitle()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showTitle:Z

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowing(Z)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 176
    iget-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialogFragment:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->isShowing()Z

    move-result p1

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 178
    :cond_11
    iget-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialog:Lcom/ljwx/basedialog/dialog/BaseDialog;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public setContent(I)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->contentId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setContent(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 3

    .line 118
    invoke-static {p0, p1}, Lcom/ljwx/baseapp/extensions/AnyExtensionsKt;->getStringRes(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->negativeText:Ljava/lang/CharSequence;

    .line 119
    iput-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->negativeListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showNegativeButton:Z

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 3

    .line 108
    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->negativeText:Ljava/lang/CharSequence;

    .line 109
    iput-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->negativeListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showNegativeButton:Z

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 3

    .line 93
    invoke-static {p0, p1}, Lcom/ljwx/baseapp/extensions/AnyExtensionsKt;->getStringRes(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->positiveText:Ljava/lang/CharSequence;

    .line 94
    iput-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->positiveListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showPositiveButton:Z

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->positiveText:Ljava/lang/CharSequence;

    .line 84
    iput-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->positiveListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showPositiveButton:Z

    return-object p0
.end method

.method public final setTag(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lcom/ljwx/baseapp/extensions/AnyExtensionsKt;->getStringRes(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->title:Ljava/lang/String;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showTitle:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->title:Ljava/lang/String;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showTitle:Z

    return-object p0
.end method

.method public setViewLayout(I)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->rootLayout:Ljava/lang/Integer;

    return-object p0
.end method

.method public showCloseIcon(Ljava/lang/Boolean;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showClose:Ljava/lang/Boolean;

    return-object p0
.end method

.method public showDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialog:Lcom/ljwx/basedialog/dialog/BaseDialog;

    if-nez v0, :cond_18

    new-instance v0, Lcom/ljwx/basedialog/dialog/BaseDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/basedialog/dialog/BaseDialog;-><init>(Landroid/content/Context;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setBuilder(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialog/BaseDialog;

    move-result-object v0

    .line 147
    :cond_18
    invoke-virtual {v0}, Lcom/ljwx/basedialog/dialog/BaseDialog;->setDataFromBuilder()V

    const/4 p1, 0x0

    .line 148
    invoke-virtual {v0, p1}, Lcom/ljwx/basedialog/dialog/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method public bridge synthetic showDialogFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/DialogFragment;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showDialogFragment(Landroidx/fragment/app/FragmentManager;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic showDialogFragment(Landroidx/fragment/app/FragmentManager;I)Landroidx/fragment/app/DialogFragment;
    .registers 3

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showDialogFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic showDialogFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;
    .registers 3

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showDialogFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public showDialogFragment(Landroidx/fragment/app/FragmentManager;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
    .registers 4

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialogFragment:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    if-nez v0, :cond_12

    new-instance v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    invoke-direct {v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setBuilder$basedialog_release(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object v0

    .line 169
    :cond_12
    iget-object v1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->tag:Ljava/lang/String;

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->content:Ljava/lang/String;

    :cond_18
    iput-object v1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->tag:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, p1, v1}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public showDialogFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
    .registers 4

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialogFragment:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    if-nez v0, :cond_12

    new-instance v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    invoke-direct {v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setBuilder$basedialog_release(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object v0

    .line 162
    :cond_12
    invoke-static {p0, p2}, Lcom/ljwx/baseapp/extensions/AnyExtensionsKt;->getStringRes(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->tag:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, p1, p2}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public showDialogFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;
    .registers 4

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->dialogFragment:Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    if-nez v0, :cond_12

    new-instance v0, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    invoke-direct {v0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->setBuilder$basedialog_release(Lcom/ljwx/basedialog/common/BaseDialogBuilder;)Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;

    move-result-object v0

    :cond_12
    if-nez p2, :cond_16

    .line 155
    iget-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->content:Ljava/lang/String;

    :cond_16
    iput-object p2, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->tag:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public showNormalNegativeButton(Z)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 125
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showNegativeButton:Z

    return-object p0
.end method

.method public showNormalPositiveButton(Z)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showPositiveButton:Z

    return-object p0
.end method
