.class Lcom/codemao/nemo/activity/SettingActivity$4;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/SettingActivity;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/SettingActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V
    .registers 3

    .line 149
    iput-object p2, p0, Lcom/codemao/nemo/activity/SettingActivity$4;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 153
    iget-object p1, p0, Lcom/codemao/nemo/activity/SettingActivity$4;->val$downloadDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
