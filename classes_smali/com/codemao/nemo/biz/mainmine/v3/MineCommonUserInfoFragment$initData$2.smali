.class public final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$2;
.super Ljava/lang/Object;
.source "MineCommonUserInfoFragment.kt"

# interfaces
.implements Lcn/codemao/android/account/listener/NetSuccessResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.method constructor <init>()V
    .registers 1

    .line 159
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

    .line 159
    check-cast p1, Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonUserInfoFragment$initData$2;->onSuccess(Lcn/codemao/android/account/bean/UserInfoVO;)V

    return-void
.end method
