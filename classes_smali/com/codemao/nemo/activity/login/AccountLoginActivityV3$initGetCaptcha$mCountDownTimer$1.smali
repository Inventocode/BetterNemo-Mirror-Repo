.class public final Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;
.super Landroid/os/CountDownTimer;
.source "AccountLoginActivityV3.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->initGetCaptcha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $textViewOfConfirm:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 6

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;->$textViewOfConfirm:Landroid/widget/TextView;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    .line 184
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;->$textViewOfConfirm:Landroid/widget/TextView;

    const-string/jumbo v1, "获 取"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;->$textViewOfConfirm:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;->$textViewOfConfirm:Landroid/widget/TextView;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onTick(J)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 187
    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 188
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$initGetCaptcha$mCountDownTimer$1;->$textViewOfConfirm:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x73

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
