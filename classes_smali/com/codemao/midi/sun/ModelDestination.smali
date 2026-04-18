.class public Lcom/codemao/midi/sun/ModelDestination;
.super Ljava/lang/Object;
.source "ModelDestination.java"


# static fields
.field public static final DESTINATION_CHORUS:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG1_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG1_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG1_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG1_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG1_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG2_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG2_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG2_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG2_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_EG2_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_FILTER_Q:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_LFO1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_LFO1_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_LFO2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_LFO2_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_PAN:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_REVERB:Lcom/codemao/midi/sun/ModelIdentifier;

.field public static final DESTINATION_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;


# instance fields
.field private destination:Lcom/codemao/midi/sun/ModelIdentifier;

.field private transform:Lcom/codemao/midi/sun/ModelTransform;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 36
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "noteon"

    const-string v2, "keynumber"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_KEYNUMBER:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 38
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "velocity"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_VELOCITY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 40
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "osc"

    const-string v2, "pitch"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 42
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "mixer"

    const-string v2, "gain"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 44
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "pan"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PAN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 46
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "reverb"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_REVERB:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 48
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "chorus"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_CHORUS:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 50
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "lfo"

    const-string v2, "delay"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 52
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "freq"

    invoke-direct {v0, v1, v4, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO1_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 54
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 56
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v4, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_LFO2_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 58
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "eg"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 60
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "attack"

    invoke-direct {v0, v1, v6, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 62
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v7, "hold"

    invoke-direct {v0, v1, v7, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 64
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v8, "decay"

    invoke-direct {v0, v1, v8, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 66
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "sustain"

    invoke-direct {v0, v1, v9, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 69
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v10, "release"

    invoke-direct {v0, v1, v10, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG1_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 71
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v11, "shutdown"

    invoke-direct {v0, v1, v11, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v2, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DELAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 75
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v6, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_ATTACK:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 77
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v7, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_HOLD:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 79
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v8, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_DECAY:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 81
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v9, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_SUSTAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 84
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v10, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_EG2_RELEASE:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 86
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v0, v1, v11, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v1, "filter"

    invoke-direct {v0, v1, v4, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 90
    new-instance v0, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v2, "q"

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_Q:Lcom/codemao/midi/sun/ModelIdentifier;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelIdentifier;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_NONE:Lcom/codemao/midi/sun/ModelIdentifier;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelDestination;->destination:Lcom/codemao/midi/sun/ModelIdentifier;

    .line 93
    new-instance v0, Lcom/codemao/midi/sun/ModelStandardTransform;

    invoke-direct {v0}, Lcom/codemao/midi/sun/ModelStandardTransform;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelDestination;->transform:Lcom/codemao/midi/sun/ModelTransform;

    .line 99
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelDestination;->destination:Lcom/codemao/midi/sun/ModelIdentifier;

    return-void
.end method


# virtual methods
.method public getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelDestination;->destination:Lcom/codemao/midi/sun/ModelIdentifier;

    return-object v0
.end method

.method public getTransform()Lcom/codemao/midi/sun/ModelTransform;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelDestination;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-object v0
.end method

.method public setTransform(Lcom/codemao/midi/sun/ModelTransform;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelDestination;->transform:Lcom/codemao/midi/sun/ModelTransform;

    return-void
.end method
