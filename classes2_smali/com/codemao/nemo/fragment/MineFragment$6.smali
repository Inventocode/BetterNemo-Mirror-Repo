.class Lcom/codemao/nemo/fragment/MineFragment$6;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
        "Lcn/codemao/android/account/bean/UserInfoVO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 2

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 389
    check-cast p1, Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/MineFragment$6;->onSuccess(Lcn/codemao/android/account/bean/UserInfoVO;)V

    return-void
.end method
