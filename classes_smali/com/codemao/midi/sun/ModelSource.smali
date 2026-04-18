.class public Lcom/codemao/midi/sun/ModelSource;
.super Ljava/lang/Object;
.source "ModelSource.java"


# static fields
.field public static final SOURCE_EG2:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_LFO2:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_MIDI_CHANNEL_PRESSURE:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_MIDI_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_MIDI_POLY_PRESSURE:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final SOURCE_NOTEON_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;


# instance fields
.field private source:Lcom/codemao/midi/sun/ModelIdentifier;

.field private transform:Lcom/codemao/midi/sun/ModelTransform;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 36
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "noteon"

    const-string v2, "keynumber"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 38
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "velocity"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NOTEON_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 40
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "eg"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_EG2:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 44
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "lfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 46
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v2, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO2:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 48
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "midi"

    const-string v2, "pitch"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_MIDI_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 50
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "channel_pressure"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_MIDI_CHANNEL_PRESSURE:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 54
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "poly_pressure"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_MIDI_POLY_PRESSURE:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 56
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "midi_cc"

    const-string v2, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "midi_rpn"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 64
    new-instance v0, Lcom/codemao/midi/sun/ModelStandardTransform;

    invoke-direct {v0}, Lcom/codemao/midi/sun/ModelStandardTransform;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelIdentifier;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 68
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 69
    new-instance p1, Lcom/codemao/midi/sun/ModelStandardTransform;

    invoke-direct {p1}, Lcom/codemao/midi/sun/ModelStandardTransform;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelIdentifier;Lcom/codemao/midi/sun/ModelTransform;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 90
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 91
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZ)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 78
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 79
    new-instance p1, Lcom/codemao/midi/sun/ModelStandardTransform;

    invoke-direct {p1, p2, p3}, Lcom/codemao/midi/sun/ModelStandardTransform;-><init>(ZZ)V

    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/codemao/midi/sun/ModelSource;->SOURCE_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 84
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 85
    new-instance p1, Lcom/codemao/midi/sun/ModelStandardTransform;

    invoke-direct {p1, p2, p3, p4}, Lcom/codemao/midi/sun/ModelStandardTransform;-><init>(ZZI)V

    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method


# virtual methods
.method public getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->source:Lcom/codemao/midi/sun/ModelIdentifier;

    return-object v0
.end method

.method public getTransform()Lcom/codemao/midi/sun/ModelTransform;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-object v0
.end method

.method public setTransform(Lcom/codemao/midi/sun/ModelTransform;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelSource;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method
