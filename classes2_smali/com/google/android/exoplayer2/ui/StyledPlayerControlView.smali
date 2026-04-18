.class public Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingViewHolder;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x3e8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64

.field private static final SETTINGS_AUDIO_TRACK_SELECTION_POSITION:I = 0x1

.field private static final SETTINGS_PLAYBACK_SPEED_POSITION:I


# instance fields
.field private adGroupTimesMs:[J

.field private audioTrackButton:Landroid/view/View;

.field private audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

.field private final buttonAlphaDisabled:F

.field private final buttonAlphaEnabled:F

.field private final componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

.field private controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

.field private currentWindowOffset:J

.field private final durationView:Landroid/widget/TextView;

.field private extraAdGroupTimesMs:[J

.field private extraPlayedAdGroups:[Z

.field private final fastForwardButton:Landroid/view/View;

.field private final fastForwardButtonTextView:Landroid/widget/TextView;

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private fullScreenButton:Landroid/widget/ImageView;

.field private final fullScreenEnterContentDescription:Ljava/lang/String;

.field private final fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

.field private final fullScreenExitContentDescription:Ljava/lang/String;

.field private final fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

.field private isAttachedToWindow:Z

.field private isFullScreen:Z

.field private minimalFullScreenButton:Landroid/widget/ImageView;

.field private multiWindowTimeBar:Z

.field private needToHideBars:Z

.field private final nextButton:Landroid/view/View;

.field private onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playPauseButton:Landroid/view/View;

.field private playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

.field private playbackSpeedButton:Landroid/view/View;

.field private playedAdGroups:[Z

.field private player:Lcom/google/android/exoplayer2/Player;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private progressUpdateListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

.field private final repeatAllButtonContentDescription:Ljava/lang/String;

.field private final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOffButtonContentDescription:Ljava/lang/String;

.field private final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatOneButtonContentDescription:Ljava/lang/String;

.field private final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final repeatToggleButton:Landroid/widget/ImageView;

.field private repeatToggleModes:I

.field private resources:Landroid/content/res/Resources;

.field private final rewindButton:Landroid/view/View;

.field private final rewindButtonTextView:Landroid/widget/TextView;

.field private scrubbing:Z

.field private settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

.field private settingsButton:Landroid/view/View;

.field private settingsView:Landroidx/recyclerview/widget/RecyclerView;

.field private settingsWindow:Landroid/widget/PopupWindow;

.field private settingsWindowMargin:I

.field private showMultiWindowTimeBar:Z

.field private showTimeoutMs:I

.field private final shuffleButton:Landroid/widget/ImageView;

.field private final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOffContentDescription:Ljava/lang/String;

.field private final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final shuffleOnContentDescription:Ljava/lang/String;

.field private subtitleButton:Landroid/widget/ImageView;

.field private final subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOffContentDescription:Ljava/lang/String;

.field private final subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final subtitleOnContentDescription:Ljava/lang/String;

.field private textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private timeBarMinUpdateIntervalMs:I

.field private trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vrButton:Landroid/view/View;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$VIUC90akgliKObyZnsLjDCSGVvY(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dsDS5OYIroORhxkiiMev-op7GuU(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    return-void
.end method

.method public static synthetic $r8$lambda$yF0wxNFGTOK6vMLq5xLUexTMVVQ(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.ui"

    .line 311
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 453
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 457
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 471
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 472
    sget v2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_control_view:I

    const/16 v3, 0x1388

    .line 473
    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    const/4 v8, 0x0

    .line 474
    iput v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    const/16 v3, 0xc8

    .line 475
    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    const/4 v9, 0x1

    if-eqz v0, :cond_8a

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView:[I

    move/from16 v5, p3

    .line 489
    invoke-virtual {v3, v0, v4, v5, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 495
    :try_start_23
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_controller_layout_id:I

    .line 496
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 498
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_timeout:I

    iget v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    .line 499
    iget v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    .line 500
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_rewind_button:I

    .line 501
    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 502
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_fastforward_button:I

    .line 503
    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 505
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_previous_button:I

    .line 506
    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 508
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_next_button:I

    .line 509
    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 510
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_shuffle_button:I

    .line 511
    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 513
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_subtitle_button:I

    .line 514
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 516
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_vr_button:I

    .line 517
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 518
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_time_bar_min_update_interval:I

    iget v14, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 519
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 518
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 522
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_animation_enabled:I

    .line 523
    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13
    :try_end_76
    .catchall {:try_start_23 .. :try_end_76} :catchall_85

    .line 525
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v10

    move v15, v11

    move v10, v4

    move v11, v5

    move/from16 v22, v12

    move v12, v6

    move v6, v13

    move v13, v7

    move/from16 v7, v22

    goto :goto_92

    :catchall_85
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 526
    throw v0

    :cond_8a
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 529
    :goto_92
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    .line 530
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 532
    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    .line 533
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 534
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 535
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 537
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    new-array v2, v8, [J

    .line 538
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    new-array v2, v8, [Z

    .line 539
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    new-array v2, v8, [J

    .line 540
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    new-array v2, v8, [Z

    .line 541
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    .line 542
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 544
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->durationView:Landroid/widget/TextView;

    .line 545
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;

    .line 547
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitle:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_107

    .line 549
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    :cond_107
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    .line 553
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->initializeFullScreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 554
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    .line 555
    new-instance v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->initializeFullScreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 557
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_settings:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    if-eqz v2, :cond_138

    .line 559
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    :cond_138
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedButton:Landroid/view/View;

    if-eqz v2, :cond_145

    .line 564
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    :cond_145
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_audio_track:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackButton:Landroid/view/View;

    if-eqz v2, :cond_152

    .line 569
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    :cond_152
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 573
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_16b

    .line 575
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v20, v5

    move/from16 v21, v6

    move v0, v7

    const/4 v9, 0x0

    goto :goto_1b4

    :cond_16b
    if-eqz v3, :cond_1ac

    .line 579
    new-instance v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lcom/google/android/exoplayer2/ui/R$style;->ExoStyledControls_TimeBar:I

    move-object/from16 p3, v2

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, v16

    move-object/from16 v20, v5

    move/from16 v5, v17

    move/from16 v21, v6

    move-object/from16 v6, p4

    move v0, v7

    move/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 581
    invoke-virtual {v2, v8}, Landroid/view/View;->setId(I)V

    .line 582
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v4, v19

    .line 584
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 585
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 586
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 587
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    goto :goto_1b4

    :cond_1ac
    move-object/from16 v20, v5

    move/from16 v21, v6

    move v0, v7

    const/4 v9, 0x0

    .line 589
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 591
    :goto_1b4
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    move-object/from16 v3, v20

    if-eqz v2, :cond_1bd

    .line 592
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->addListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 595
    :cond_1bd
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play_pause:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v2, :cond_1ca

    .line 597
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    :cond_1ca
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    if-eqz v2, :cond_1d7

    .line 601
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :cond_1d7
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    if-eqz v2, :cond_1e4

    .line 605
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    :cond_1e4
    sget v2, Lcom/google/android/exoplayer2/ui/R$font;->roboto_medium_numbers:I

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 608
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1fd

    .line 609
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1fe

    :cond_1fd
    move-object v6, v9

    :goto_1fe
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_205

    .line 611
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_205
    if-nez v5, :cond_208

    move-object v5, v6

    .line 613
    :cond_208
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v5, :cond_20f

    .line 615
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    :cond_20f
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_220

    .line 618
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_221

    :cond_220
    move-object v6, v9

    :goto_221
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_228

    .line 620
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_228
    if-nez v5, :cond_22b

    move-object v5, v6

    .line 622
    :cond_22b
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v5, :cond_232

    .line 624
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    :cond_232
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_241

    .line 628
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    :cond_241
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_250

    .line 632
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    :cond_250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    .line 636
    sget v5, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 637
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x42c80000  # 100.0f

    div-float/2addr v2, v5

    iput v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaEnabled:F

    .line 638
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 639
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaDisabled:F

    .line 641
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v2, :cond_27c

    const/4 v5, 0x0

    .line 643
    invoke-direct {v1, v5, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 646
    :cond_27c
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move/from16 v5, v21

    .line 647
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 651
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_playback_speed:I

    .line 652
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 653
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_speed:I

    .line 654
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v2, v7

    .line 655
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v7, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_title_audio:I

    .line 656
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 657
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_audiotrack:I

    .line 658
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v2, v7

    .line 659
    new-instance v6, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    invoke-direct {v6, v1, v5, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    .line 660
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    .line 663
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_settings_list:I

    .line 664
    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 665
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 666
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 667
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v2, v4, v5, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    .line 669
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_304

    .line 672
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_305

    :cond_304
    const/4 v5, 0x0

    .line 674
    :goto_305
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x1

    .line 675
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    .line 677
    new-instance v2, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    .line 678
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 679
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 680
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_enabled_description:I

    .line 681
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    .line 682
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_disabled_description:I

    .line 683
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    .line 684
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-direct {v2, v1, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    .line 685
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    invoke-direct {v2, v1, v9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    .line 686
    new-instance v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/R$array;->exo_playback_speeds:I

    .line 688
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$array;->exo_speed_multiplied_by_100:I

    .line 689
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[I)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    .line 691
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    .line 692
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    .line 693
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    .line 694
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 695
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_one:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 696
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_all:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 698
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 699
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_exit_description:I

    .line 700
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitContentDescription:Ljava/lang/String;

    .line 701
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_enter_description:I

    .line 702
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterContentDescription:Ljava/lang/String;

    .line 703
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 704
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 705
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 706
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 707
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 708
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 709
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 710
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 711
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 714
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 715
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 716
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {v2, v3, v11}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 717
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {v2, v3, v10}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 718
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    invoke-virtual {v2, v3, v12}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 719
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    invoke-virtual {v2, v3, v13}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 720
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v14}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 721
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 722
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 723
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    if-eqz v3, :cond_43a

    const/4 v8, 0x1

    goto :goto_43b

    :cond_43a
    const/4 v8, 0x0

    :goto_43b
    invoke-virtual {v0, v2, v8}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 725
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTrackLists()V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z
    .registers 2

    .line 308
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/Player;J)V
    .registers 4

    .line 308
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z
    .registers 1

    .line 308
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/Player;)V
    .registers 2

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchPlayPause(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I
    .registers 1

    .line 308
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V
    .registers 2

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onSettingViewClicked(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V
    .registers 2

    .line 308
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;Lcom/google/android/exoplayer2/TracksInfo;ILcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;
    .registers 4

    .line 308
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->forceTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;Lcom/google/android/exoplayer2/TracksInfo;ILcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 1

    .line 308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlaybackSpeedList()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z
    .registers 10

    .line 1653
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_a

    return v1

    .line 1656
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_24

    .line 1658
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_21

    return v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method private dispatchPause(Lcom/google/android/exoplayer2/Player;)V
    .registers 2

    .line 1630
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->pause()V

    return-void
.end method

.method private dispatchPlay(Lcom/google/android/exoplayer2/Player;)V
    .registers 5

    .line 1620
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1622
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    goto :goto_1a

    :cond_b
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 1624
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    .line 1626
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    return-void
.end method

.method private dispatchPlayPause(Lcom/google/android/exoplayer2/Player;)V
    .registers 4

    .line 1611
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    .line 1612
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_15

    .line 1615
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchPause(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_18

    .line 1613
    :cond_15
    :goto_15
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchPlay(Lcom/google/android/exoplayer2/Player;)V

    :goto_18
    return-void
.end method

.method private displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1402
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1404
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateSettingsWindowSize()V

    const/4 p1, 0x0

    .line 1406
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    .line 1407
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x1

    .line 1408
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->needToHideBars:Z

    .line 1410
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int/2addr p1, v0

    .line 1411
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v0, v1

    .line 1413
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method private static forceTrackSelection(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;Lcom/google/android/exoplayer2/TracksInfo;ILcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;
    .registers 8
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 2231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;

    move-result-object p0

    .line 2234
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo;->getTrackGroupInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackType()I

    move-result v0

    .line 2235
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;->setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;

    .line 2239
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo;->getTrackGroupInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 p3, 0x0

    .line 2240
    :goto_1a
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p3, v1, :cond_41

    .line 2241
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    if-eq p3, p2, :cond_3e

    .line 2242
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackType()I

    move-result v2

    if-ne v2, v0, :cond_3e

    .line 2243
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 2244
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;->addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;

    :cond_3e
    add-int/lit8 p3, p3, 0x1

    goto :goto_1a

    .line 2247
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    move-result-object p0

    return-object p0
.end method

.method private gatherSupportedTrackInfosOfType(Lcom/google/android/exoplayer2/TracksInfo;I)Lcom/google/common/collect/ImmutableList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/TracksInfo;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;",
            ">;"
        }
    .end annotation

    .line 1241
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1242
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/TracksInfo;->getTrackGroupInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1243
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 1244
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    .line 1245
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackType()I

    move-result v5

    if-eq v5, p2, :cond_1e

    goto :goto_43

    .line 1248
    :cond_1e
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    .line 1249
    :goto_23
    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_43

    .line 1250
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isTrackSupported(I)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_40

    .line 1253
    :cond_2e
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->trackNameProvider:Lcom/google/android/exoplayer2/ui/TrackNameProvider;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/ui/TrackNameProvider;->getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v7

    .line 1254
    new-instance v8, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    invoke-direct {v8, p1, v3, v6, v7}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;-><init>(Lcom/google/android/exoplayer2/TracksInfo;IILjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_43
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1257
    :cond_46
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .registers 3

    .line 1688
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private initTrackSelectionAdapter()V
    .registers 4

    .line 1221
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->clear()V

    .line 1222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->clear()V

    .line 1223
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_4f

    const/16 v1, 0x1e

    .line 1224
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/16 v1, 0x1d

    .line 1225
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_4f

    .line 1228
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTracksInfo()Lcom/google/android/exoplayer2/TracksInfo;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    const/4 v2, 0x1

    .line 1230
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->gatherSupportedTrackInfosOfType(Lcom/google/android/exoplayer2/TracksInfo;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 1229
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->init(Ljava/util/List;)V

    .line 1231
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1232
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    const/4 v2, 0x3

    .line 1233
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->gatherSupportedTrackInfosOfType(Lcom/google/android/exoplayer2/TracksInfo;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1232
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    goto :goto_4f

    .line 1235
    :cond_46
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private static initializeFullScreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x8

    .line 1669
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x59

    if-eq p0, v0, :cond_23

    const/16 v0, 0x55

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x57

    if-eq p0, v0, :cond_23

    const/16 v0, 0x58

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private onFullScreenButtonClicked(Landroid/view/View;)V
    .registers 3

    .line 1467
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

    if-nez p1, :cond_5

    return-void

    .line 1471
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    .line 1472
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1473
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1474
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

    if-eqz p1, :cond_20

    .line 1475
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullScreen:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;->onFullScreenModeChanged(Z)V

    :cond_20
    return-void
.end method

.method private onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_8

    if-eq p5, p9, :cond_35

    .line 1595
    :cond_8
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 1596
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateSettingsWindowSize()V

    .line 1597
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int p6, p2, p3

    .line 1598
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    neg-int p2, p2

    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    sub-int p7, p2, p3

    .line 1599
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    const/4 p8, -0x1

    const/4 p9, -0x1

    move-object p5, p1

    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_35
    return-void
.end method

.method private onSettingViewClicked(I)V
    .registers 3

    if-nez p1, :cond_8

    .line 1495
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_16

    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 1497
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->audioTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_16

    .line 1499
    :cond_11
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_16
    return-void
.end method

.method private seekTo(Lcom/google/android/exoplayer2/Player;IJ)V
    .registers 5

    .line 1463
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    return-void
.end method

.method private seekToTimeBarPosition(Lcom/google/android/exoplayer2/Player;J)V
    .registers 10

    .line 1439
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1440
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1441
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    .line 1444
    :goto_13
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_22

    goto :goto_30

    :cond_22
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_28

    move-wide p2, v3

    goto :goto_30

    :cond_28
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1456
    :cond_2c
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v2

    .line 1458
    :goto_30
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->seekTo(Lcom/google/android/exoplayer2/Player;IJ)V

    .line 1459
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    return-void
.end method

.method private setPlaybackSpeed(F)V
    .registers 4

    .line 1417
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_5

    return-void

    .line 1420
    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method private shouldShowPauseButton()Z
    .registers 4

    .line 1604
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 1605
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1606
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1607
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private updateButton(ZLandroid/view/View;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 1433
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_b

    .line 1434
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaEnabled:F

    goto :goto_d

    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->buttonAlphaDisabled:F

    :goto_d
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateFastForwardButton()V
    .registers 8

    .line 1141
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x3a98

    :goto_b
    const-wide/16 v2, 0x3e8

    .line 1142
    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1143
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 1144
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 1147
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1148
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1147
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_33
    return-void
.end method

.method private updateFullScreenButtonForState(Landroid/widget/ImageView;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_10

    .line 1485
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1486
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenExitContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1488
    :cond_10
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1489
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenEnterContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1a
    return-void
.end method

.method private static updateFullScreenButtonVisibility(Landroid/view/View;Z)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 1679
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_a
    const/16 p1, 0x8

    .line 1681
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    return-void
.end method

.method private updateNavigation()V
    .registers 8

    .line 1091
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_59

    .line 1095
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    .line 1102
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v1

    const/4 v2, 0x7

    .line 1103
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v2

    const/16 v3, 0xb

    .line 1104
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 1105
    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v4

    const/16 v5, 0x9

    .line 1106
    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/Player;->isCommandAvailable(I)Z

    move-result v0

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_34

    :cond_30
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_34
    if-eqz v1, :cond_39

    .line 1110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRewindButton()V

    :cond_39
    if-eqz v4, :cond_3e

    .line 1113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFastForwardButton()V

    .line 1116
    :cond_3e
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1117
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1118
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v4, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1119
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v0, :cond_59

    .line 1121
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    :cond_59
    :goto_59
    return-void
.end method

.method private updatePlayPauseButton()V
    .registers 4

    .line 1072
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_4e

    .line 1075
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v0, :cond_4e

    .line 1076
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shouldShowPauseButton()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1077
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_pause:I

    .line 1078
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 1080
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 1082
    :cond_32
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_play:I

    .line 1083
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 1085
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private updatePlaybackSpeedList()V
    .registers 4

    .line 1379
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_5

    return-void

    .line 1382
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;->updateSelectedIndex(F)V

    .line 1383
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playbackSpeedAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;

    .line 1384
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$PlaybackSpeedAdapter;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    .line 1383
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    return-void
.end method

.method private updateProgress()V
    .registers 14

    .line 1333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_c

    goto/16 :goto_99

    .line 1336
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_21

    .line 1340
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1341
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentBufferedPosition()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_22

    :cond_21
    move-wide v3, v1

    .line 1343
    :goto_22
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v5, :cond_35

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->scrubbing:Z

    if-nez v6, :cond_35

    .line 1344
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    :cond_35
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v5, :cond_41

    .line 1347
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 1348
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 1350
    :cond_41
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

    if-eqz v5, :cond_48

    .line 1351
    invoke-interface {v5, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;->onProgressUpdate(JJ)V

    .line 1355
    :cond_48
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_52

    const/4 v4, 0x1

    goto :goto_56

    .line 1356
    :cond_52
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v4

    :goto_56
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_8f

    .line 1357
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 1359
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v3, :cond_69

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_6a

    :cond_69
    move-wide v3, v5

    .line 1362
    :goto_6a
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 1363
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1366
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7f

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_7f
    move-wide v7, v5

    .line 1371
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 1372
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_99

    :cond_8f
    const/4 v0, 0x4

    if-eq v4, v0, :cond_99

    if-eq v4, v3, :cond_99

    .line 1374
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_99
    :goto_99
    return-void
.end method

.method private updateRepeatModeButton()V
    .registers 4

    .line 1156
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_6a

    .line 1160
    :cond_f
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 1161
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    return-void

    .line 1165
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_2e

    .line 1167
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1168
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1169
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2e
    const/4 v2, 0x1

    .line 1173
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1174
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_5c

    if-eq v0, v2, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    goto :goto_6a

    .line 1184
    :cond_3e
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 1180
    :cond_4d
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6a

    .line 1176
    :cond_5c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private updateRewindButton()V
    .registers 8

    .line 1127
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getSeekBackIncrement()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x1388

    :goto_b
    const-wide/16 v2, 0x3e8

    .line 1128
    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1129
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 1130
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    :cond_1a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 1133
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1134
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_33
    return-void
.end method

.method private updateSettingsWindowSize()V
    .registers 3

    .line 1388
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 1390
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1391
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 1392
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1393
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1395
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1396
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 1397
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1398
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private updateShuffleButton()V
    .registers 4

    .line 1193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_5c

    .line 1197
    :cond_f
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    .line 1198
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 1199
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    goto :goto_5c

    :cond_20
    if-nez v1, :cond_36

    .line 1201
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1202
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5c

    :cond_36
    const/4 v0, 0x1

    .line 1205
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1206
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1207
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_49

    :cond_47
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1206
    :goto_49
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1208
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1209
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1210
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_59

    .line 1211
    :cond_57
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 1208
    :goto_59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private updateTimeline()V
    .registers 23

    move-object/from16 v0, p0

    .line 1261
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v1, :cond_7

    return-void

    .line 1265
    :cond_7
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    .line 1266
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    const-wide/16 v5, 0x0

    .line 1267
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    .line 1270
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 1271
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e6

    .line 1272
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    .line 1273
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    if-eqz v7, :cond_35

    const/4 v8, 0x0

    goto :goto_36

    :cond_35
    move v8, v1

    :goto_36
    if-eqz v7, :cond_3e

    .line 1274
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_3f

    :cond_3e
    move v7, v1

    :goto_3f
    move-wide v9, v5

    const/4 v11, 0x0

    :goto_41
    if-gt v8, v7, :cond_e4

    if-ne v8, v1, :cond_4b

    .line 1277
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->currentWindowOffset:J

    .line 1279
    :cond_4b
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v2, v8, v12}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1280
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v13, v12, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v15, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v17, v13, v15

    if-nez v17, :cond_65

    .line 1281
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto/16 :goto_e4

    .line 1284
    :cond_65
    iget v12, v12, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    :goto_67
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v14, v13, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v12, v14, :cond_dc

    .line 1285
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1286
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v13}, Lcom/google/android/exoplayer2/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v13

    .line 1287
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v14}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v14

    :goto_7e
    if-ge v13, v14, :cond_d8

    .line 1289
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_97

    .line 1291
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v3, v4, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    cmp-long v18, v3, v15

    if-nez v18, :cond_95

    goto :goto_d4

    :cond_95
    move-wide/from16 v18, v3

    .line 1297
    :cond_97
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v18, v18, v3

    cmp-long v3, v18, v5

    if-ltz v3, :cond_d4

    .line 1299
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    array-length v4, v3

    if-ne v11, v4, :cond_be

    .line 1300
    array-length v4, v3

    if-nez v4, :cond_ad

    const/4 v4, 0x1

    goto :goto_b0

    :cond_ad
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 1301
    :goto_b0
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    .line 1302
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    .line 1304
    :cond_be
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    add-long v18, v9, v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v18

    aput-wide v18, v3, v11

    .line 1305
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v4

    aput-boolean v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    :cond_d4
    :goto_d4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x1

    goto :goto_7e

    :cond_d8
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_67

    .line 1310
    :cond_dc
    iget-wide v3, v13, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    add-long/2addr v9, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_41

    :cond_e4
    :goto_e4
    move-wide v5, v9

    goto :goto_e7

    :cond_e6
    const/4 v11, 0x0

    .line 1313
    :goto_e7
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v1

    .line 1314
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v3, :cond_fa

    .line 1315
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    :cond_fa
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v3, :cond_131

    .line 1318
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 1319
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 1321
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    array-length v4, v3

    if-le v2, v4, :cond_119

    .line 1322
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    .line 1323
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    .line 1325
    :cond_119
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1326
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->adGroupTimesMs:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playedAdGroups:[Z

    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1329
    :cond_131
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgress()V

    return-void
.end method

.method private updateTrackLists()V
    .registers 3

    .line 1216
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->initTrackSelectionAdapter()V

    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->textTrackSelectionAdapter:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .registers 3

    .line 807
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1525
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1536
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1537
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz v1, :cond_60

    .line 1538
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_60

    .line 1541
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5e

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_24

    .line 1543
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5e

    .line 1544
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekForward()V

    goto :goto_5e

    :cond_24
    const/16 v2, 0x59

    if-ne v0, v2, :cond_2c

    .line 1547
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekBack()V

    goto :goto_5e

    .line 1548
    :cond_2c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5e

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_5b

    const/16 p1, 0x55

    if-eq v0, p1, :cond_5b

    const/16 p1, 0x57

    if-eq v0, p1, :cond_57

    const/16 p1, 0x58

    if-eq v0, p1, :cond_53

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4f

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_4b

    goto :goto_5e

    .line 1558
    :cond_4b
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchPause(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_5e

    .line 1555
    :cond_4f
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchPlay(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_5e

    .line 1564
    :cond_53
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToPrevious()V

    goto :goto_5e

    .line 1561
    :cond_57
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->seekToNext()V

    goto :goto_5e

    .line 1552
    :cond_5b
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchPlayPause(Lcom/google/android/exoplayer2/Player;)V

    :cond_5e
    :goto_5e
    const/4 p1, 0x1

    return p1

    :cond_60
    :goto_60
    const/4 p1, 0x0

    return p1
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/Player;
    .registers 2

    .line 734
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .registers 2

    .line 900
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    .line 877
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .registers 3

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hide()V

    return-void
.end method

.method public hideImmediately()V
    .registers 2

    .line 1042
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->hideImmediately()V

    return-void
.end method

.method public isAnimationEnabled()Z
    .registers 2

    .line 994
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullyVisible()Z
    .registers 2

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->isFullyVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1052
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method notifyOnVisibilityChange()V
    .registers 4

    .line 1056
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;

    .line 1057
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1505
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1506
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1507
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    .line 1508
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1509
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1511
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1516
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1517
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1518
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isAttachedToWindow:Z

    .line 1519
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1520
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->removeHideCallbacks()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 1576
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1577
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->onLayout(ZIIII)V

    return-void
.end method

.method public removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$VisibilityListener;)V
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method requestPlayPauseFocus()V
    .registers 2

    .line 1424
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->playPauseButton:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 1425
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_7
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .registers 3

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_c

    new-array p1, v0, [J

    .line 790
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    new-array p1, v0, [Z

    .line 791
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    goto :goto_1e

    .line 793
    :cond_c
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 794
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 795
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraAdGroupTimesMs:[J

    .line 796
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->extraPlayedAdGroups:[Z

    .line 798
    :goto_1e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;)V
    .registers 6

    .line 1022
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->onFullScreenModeChangedListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$OnFullScreenModeChangedListener;

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fullScreenButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonVisibility(Landroid/view/View;Z)V

    .line 1024
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->minimalFullScreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateFullScreenButtonVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .registers 6

    .line 745
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_20

    .line 747
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    .line 746
    :cond_20
    :goto_20
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_28

    return-void

    :cond_28
    if-eqz v0, :cond_2f

    .line 752
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 754
    :cond_2f
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    if-eqz p1, :cond_38

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->componentListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 758
    :cond_38
    instance-of v0, p1, Lcom/google/android/exoplayer2/ForwardingPlayer;

    if-eqz v0, :cond_41

    .line 759
    check-cast p1, Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ForwardingPlayer;->getWrappedPlayer()Lcom/google/android/exoplayer2/Player;

    .line 761
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateAll()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;)V
    .registers 2

    .line 826
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->progressUpdateListener:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$ProgressUpdateListener;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 6

    .line 909
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleModes:I

    .line 910
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    .line 911
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_16

    if-eqz v0, :cond_16

    .line 914
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_2a

    :cond_16
    const/4 v3, 0x2

    if-ne p1, v2, :cond_21

    if-ne v0, v3, :cond_21

    .line 917
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    goto :goto_2a

    :cond_21
    if-ne p1, v3, :cond_2a

    if-ne v0, v2, :cond_2a

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    .line 923
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 925
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 4

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 846
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 2

    .line 773
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showMultiWindowTimeBar:Z

    .line 774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->nextButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 866
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 4

    .line 855
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->previousButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 856
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 4

    .line 835
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 836
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 4

    .line 939
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 940
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .registers 4

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .registers 2

    .line 888
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->showTimeoutMs:I

    .line 889
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 890
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_d
    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 4

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .registers 4

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1010
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->timeBarMinUpdateIntervalMs:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 978
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 979
    :goto_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->vrButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateButton(ZLandroid/view/View;)V

    :cond_11
    return-void
.end method

.method public show()V
    .registers 2

    .line 1032
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->controlViewLayoutManager:Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlViewLayoutManager;->show()V

    return-void
.end method

.method updateAll()V
    .registers 1

    .line 1062
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlayPauseButton()V

    .line 1063
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateNavigation()V

    .line 1064
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateRepeatModeButton()V

    .line 1065
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateShuffleButton()V

    .line 1066
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTrackLists()V

    .line 1067
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updatePlaybackSpeedList()V

    .line 1068
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->updateTimeline()V

    return-void
.end method
