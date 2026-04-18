.class public Lcom/codemao/midi/view/BeatLayout;
.super Landroid/widget/RelativeLayout;
.source "BeatLayout.java"


# instance fields
.field private beatChangeListener:Lcom/codemao/midi/view/BeatView$BeatChangeListener;

.field private beatView:Lcom/codemao/midi/view/BeatView;

.field private isPad:Z

.field private tvBeatNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    sget-object p2, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p2}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/midi/view/BeatLayout;->isPad:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/BeatLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object p2, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {p2}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/midi/view/BeatLayout;->isPad:Z

    .line 36
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/BeatLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/midi/view/BeatLayout;)Lcom/codemao/midi/view/BeatView$BeatChangeListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/codemao/midi/view/BeatLayout;->beatChangeListener:Lcom/codemao/midi/view/BeatView$BeatChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/view/BeatLayout;)Landroid/widget/TextView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/codemao/midi/view/BeatLayout;->tvBeatNum:Landroid/widget/TextView;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/midi/view/BeatLayout;->isPad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/midi/R$layout;->midi_layout_beat_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/midi/R$layout;->midi_layout_beat:I

    :goto_d
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget p1, Lcom/codemao/midi/R$id;->tv_beat_num:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/midi/view/BeatLayout;->tvBeatNum:Landroid/widget/TextView;

    .line 49
    sget p1, Lcom/codemao/midi/R$id;->view_beat:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/BeatView;

    iput-object p1, p0, Lcom/codemao/midi/view/BeatLayout;->beatView:Lcom/codemao/midi/view/BeatView;

    .line 50
    new-instance v0, Lcom/codemao/midi/view/BeatLayout$1;

    invoke-direct {v0, p0}, Lcom/codemao/midi/view/BeatLayout$1;-><init>(Lcom/codemao/midi/view/BeatLayout;)V

    invoke-virtual {p1, v0}, Lcom/codemao/midi/view/BeatView;->setBeatChangeListener(Lcom/codemao/midi/view/BeatView$BeatChangeListener;)V

    return-void
.end method


# virtual methods
.method public getBeatNum()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/midi/view/BeatLayout;->beatView:Lcom/codemao/midi/view/BeatView;

    if-eqz v0, :cond_9

    .line 73
    invoke-virtual {v0}, Lcom/codemao/midi/view/BeatView;->getBeatNum()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public setBeatChangeListener(Lcom/codemao/midi/view/BeatView$BeatChangeListener;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/midi/view/BeatLayout;->beatChangeListener:Lcom/codemao/midi/view/BeatView$BeatChangeListener;

    return-void
.end method

.method public setBeatNum(I)V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/codemao/midi/view/BeatLayout;->tvBeatNum:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_18
    iget-object v0, p0, Lcom/codemao/midi/view/BeatLayout;->beatView:Lcom/codemao/midi/view/BeatView;

    if-eqz v0, :cond_1f

    .line 67
    invoke-virtual {v0, p1}, Lcom/codemao/midi/view/BeatView;->setBeatNum(I)V

    :cond_1f
    return-void
.end method
