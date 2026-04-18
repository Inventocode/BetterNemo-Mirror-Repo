.class public abstract Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;
.super Ljava/lang/Object;
.source "BaseRecordStateInterface.kt"


# instance fields
.field private final activity:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

.field private final recordTime:I


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->activity:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    const/16 p1, 0x3c

    .line 7
    iput p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->recordTime:I

    return-void
.end method


# virtual methods
.method public final getActivity()Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->activity:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    return-object v0
.end method

.method public getRecordTime()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/codemao/toolssdk/activity/audio_edit/BaseRecordStateInterface;->recordTime:I

    return v0
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public abstract updateUI()V
.end method
