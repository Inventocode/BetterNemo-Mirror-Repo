.class public final Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;
.super Ljava/lang/Object;
.source "AudioEditableActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/app/Activity;IZ)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "kn_kids"

    .line 64
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p3, 0x20000000

    .line 65
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForEditMusicFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->access$getLastEditTime$cp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x6a4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    .line 73
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "执行防抖"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;->access$setLastEditTime$cp(J)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "state"

    const-string v2, "edit_music"

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "music_url"

    .line 79
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "music_name"

    .line 80
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 81
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
