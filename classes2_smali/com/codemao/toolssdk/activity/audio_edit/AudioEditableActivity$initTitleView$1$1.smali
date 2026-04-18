.class public final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initTitleView$1$1;
.super Ljava/lang/Object;
.source "AudioEditableActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->initTitleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initTitleView$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 3

    const-string v0, "commonInputPop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 171
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initTitleView$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->getDataBinding()Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityRecordWithEditableBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getContentText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onExitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 3

    const-string v0, "commonInputPop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
