.class Lcom/codemao/nemo/fragment/MineFragment$1;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment;->getAuthInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Lcn/codemao/android/account/bean/AuthResultVO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcn/codemao/android/account/bean/AuthResultVO;)V
    .registers 3

    .line 212
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/AuthResultVO;->getPhone_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/AuthResultVO;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    .line 213
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateHasPhone(Z)V

    goto :goto_1d

    :cond_19
    const/4 p1, 0x1

    .line 215
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateHasPhone(Z)V

    .line 217
    :goto_1d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/BindEvent;->obtain()Lcom/codemao/nemo/event/BindEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 209
    check-cast p1, Lcn/codemao/android/account/bean/AuthResultVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/MineFragment$1;->onSuccess(Lcn/codemao/android/account/bean/AuthResultVO;)V

    return-void
.end method
