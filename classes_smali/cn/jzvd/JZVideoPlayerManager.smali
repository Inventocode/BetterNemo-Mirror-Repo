.class public Lcn/jzvd/JZVideoPlayerManager;
.super Ljava/lang/Object;
.source "JZVideoPlayerManager.java"


# static fields
.field public static FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

.field public static SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;


# direct methods
.method public static completeAll()V
    .registers 2

    .line 37
    sget-object v0, Lcn/jzvd/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onCompletion()V

    .line 39
    sput-object v1, Lcn/jzvd/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    .line 41
    :cond_a
    sget-object v0, Lcn/jzvd/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    if-eqz v0, :cond_13

    .line 42
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onCompletion()V

    .line 43
    sput-object v1, Lcn/jzvd/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    :cond_13
    return-void
.end method

.method public static completeAllFinish()V
    .registers 2

    .line 48
    sget-object v0, Lcn/jzvd/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 49
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onCompletionFinish()V

    .line 50
    sput-object v1, Lcn/jzvd/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    .line 52
    :cond_a
    sget-object v0, Lcn/jzvd/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    if-eqz v0, :cond_13

    .line 53
    invoke-virtual {v0}, Lcn/jzvd/JZVideoPlayer;->onCompletionFinish()V

    .line 54
    sput-object v1, Lcn/jzvd/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    :cond_13
    return-void
.end method

.method public static getCurrentJzvd()Lcn/jzvd/JZVideoPlayer;
    .registers 1

    .line 30
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 31
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getSecondFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    return-object v0

    .line 33
    :cond_b
    invoke-static {}, Lcn/jzvd/JZVideoPlayerManager;->getFirstFloor()Lcn/jzvd/JZVideoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstFloor()Lcn/jzvd/JZVideoPlayer;
    .registers 1

    .line 14
    sget-object v0, Lcn/jzvd/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    return-object v0
.end method

.method public static getSecondFloor()Lcn/jzvd/JZVideoPlayer;
    .registers 1

    .line 22
    sget-object v0, Lcn/jzvd/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    return-object v0
.end method

.method public static setFirstFloor(Lcn/jzvd/JZVideoPlayer;)V
    .registers 1

    .line 18
    sput-object p0, Lcn/jzvd/JZVideoPlayerManager;->FIRST_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    return-void
.end method

.method public static setSecondFloor(Lcn/jzvd/JZVideoPlayer;)V
    .registers 1

    .line 26
    sput-object p0, Lcn/jzvd/JZVideoPlayerManager;->SECOND_FLOOR_JZVD:Lcn/jzvd/JZVideoPlayer;

    return-void
.end method
