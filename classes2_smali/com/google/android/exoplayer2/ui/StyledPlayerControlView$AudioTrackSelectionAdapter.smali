.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;
.super Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioTrackSelectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public static synthetic $r8$lambda$pqvoHakFH23j-akaLsw-4ioLGV0(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->lambda$onBindViewHolderAtZeroPosition$0(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .registers 2

    .line 2026
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$1;)V
    .registers 3

    .line 2026
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method private hasSelectionOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2064
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 2065
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    .line 2066
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->access$4700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;)I

    move-result v4

    if-ne v4, v1, :cond_1a

    goto :goto_28

    .line 2069
    :cond_1a
    iget-object v1, v3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->getOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 p1, 0x1

    return p1

    .line 2072
    :cond_24
    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->access$4700(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;)I

    move-result v1

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2b
    return v0
.end method

.method private synthetic lambda$onBindViewHolderAtZeroPosition$0(Landroid/view/View;)V
    .registers 5

    .line 2038
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 2041
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2042
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    .line 2043
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->trackSelectionOverrides:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 2046
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2047
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;

    move-result-object v0

    .line 2048
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    move-result-object v0

    .line 2049
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Player;

    .line 2052
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 2053
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackSelectionOverrides(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 2054
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    .line 2050
    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 2055
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2057
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2055
    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    .line 2058
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4200(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2086
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2e

    .line 2087
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Player;

    .line 2088
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->trackSelectionOverrides:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    .line 2090
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    iget-object v4, v4, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;->getOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides$TrackSelectionOverride;

    move-result-object v2

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    const/4 v1, 0x0

    .line 2096
    :goto_2f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2097
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2099
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2097
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    goto :goto_84

    :cond_4b
    if-nez v1, :cond_63

    .line 2103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2105
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2103
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    goto :goto_84

    .line 2107
    :cond_63
    :goto_63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 2108
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;

    .line 2109
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2110
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    goto :goto_84

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 2116
    :cond_84
    :goto_84
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    return-void
.end method

.method public onBindViewHolderAtZeroPosition(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)V
    .registers 4

    .line 2031
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2033
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$1600(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    .line 2034
    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->trackSelectionOverrides:Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->hasSelectionOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverrides;)Z

    move-result v0

    .line 2035
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v0, :cond_23

    const/4 v0, 0x4

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTrackSelection(Ljava/lang/String;)V
    .registers 4

    .line 2079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$AudioTrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$2900(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    return-void
.end method
