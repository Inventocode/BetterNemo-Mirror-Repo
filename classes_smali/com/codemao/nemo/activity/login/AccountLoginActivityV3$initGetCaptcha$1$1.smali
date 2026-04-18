.class final Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountLoginActivityV3.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->initGetCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $mCountDownTimer:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;

.field final synthetic $textViewOfConfirm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;->$textViewOfConfirm:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;->$mCountDownTimer:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 201
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;->$textViewOfConfirm:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;->$mCountDownTimer:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$1$1;->$mCountDownTimer:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;->onFinish()V

    return-void
.end method
