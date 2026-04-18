.class final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$1;
.super Ljava/lang/Object;
.source "AudioEditableActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 197
    sget-object v0, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;->INSTANCE:Lcom/codemao/toolssdk/func/record/RecordConflictUtils;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$initState$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this@AudioEditableActivity.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/record/RecordConflictUtils;->showCloseToast(Landroid/content/Context;)V

    return-void
.end method
