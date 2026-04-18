.class Lcom/codemao/nemo/activity/UserInfoSettingActivity$5;
.super Ljava/lang/Object;
.source "UserInfoSettingActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserInfoSettingActivity;->setViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$5;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x6

    if-eq p2, p1, :cond_8

    if-nez p2, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 205
    :cond_8
    :goto_8
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$5;->this$0:Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
