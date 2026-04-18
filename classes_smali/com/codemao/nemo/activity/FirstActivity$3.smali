.class Lcom/codemao/nemo/activity/FirstActivity$3;
.super Ljava/lang/Object;
.source "FirstActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/FirstActivity;->showPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$agreementDialog:Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/FirstActivity;Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;)V
    .registers 3

    .line 159
    iput-object p2, p0, Lcom/codemao/nemo/activity/FirstActivity$3;->val$agreementDialog:Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 162
    iget-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity$3;->val$agreementDialog:Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    const/4 p1, 0x0

    .line 163
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
