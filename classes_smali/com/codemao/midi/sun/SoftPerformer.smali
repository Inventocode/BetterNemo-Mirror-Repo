.class public Lcom/codemao/midi/sun/SoftPerformer;
.super Ljava/lang/Object;
.source "SoftPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;
    }
.end annotation


# static fields
.field static defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field private static keySortComparator:Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;


# instance fields
.field public connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

.field public ctrl_connections:[I

.field private ctrl_connections_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public exclusiveClass:I

.field public forcedKeynumber:Z

.field public forcedVelocity:Z

.field public midi_connections:[[I

.field public midi_ctrl_connections:[[I

.field public midi_nrpn_connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public midi_rpn_connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public oscillators:[Lcom/codemao/midi/sun/ModelOscillator;

.field public selfNonExclusive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 42
    sput-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 47
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "noteon"

    const-string v5, "on"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v7, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v8, "eg"

    invoke-direct {v7, v8, v5, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v7}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    invoke-direct {v1, v2, v9, v10, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    aput-object v1, v0, v6

    .line 55
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v4, v5, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v7, Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v11, 0x1

    invoke-direct {v7, v8, v5, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v7}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v2, v9, v10, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    aput-object v1, v0, v11

    .line 63
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "active"

    invoke-direct {v3, v8, v5, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v7, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v12, "mixer"

    invoke-direct {v7, v12, v5, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v3, v7}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v2, v9, v10, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 71
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v8, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v11, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v5, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v7, "gain"

    invoke-direct {v5, v12, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v9, -0x3f72000000000000L  # -960.0

    invoke-direct {v1, v2, v9, v10, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 79
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v3, Lcom/codemao/midi/sun/ModelSource;

    new-instance v5, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v13, "velocity"

    invoke-direct {v5, v4, v13}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5, v11, v6, v11}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v5, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v13, v12, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v13}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v3, v9, v10, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 87
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v3, Lcom/codemao/midi/sun/ModelSource;

    new-instance v5, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v13, "midi"

    const-string v14, "pitch"

    invoke-direct {v5, v13, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5, v6, v11, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v15, "midi_rpn"

    const-string v2, "0"

    invoke-direct {v13, v15, v2}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/midi/sun/SoftPerformer$1;

    invoke-direct {v2}, Lcom/codemao/midi/sun/SoftPerformer$1;-><init>()V

    invoke-direct {v5, v13, v2}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;Lcom/codemao/midi/sun/ModelTransform;)V

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "osc"

    invoke-direct {v13, v9, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v13}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v3, v5, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelDestination;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 104
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "keynumber"

    invoke-direct {v3, v4, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v4, v9, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, 0x40c9000000000000L  # 12800.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 112
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v10, "midi_cc"

    const-string v13, "7"

    invoke-direct {v3, v10, v13}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v11, v6, v11}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v13, v12, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v13}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, -0x3f72000000000000L  # -960.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 120
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "8"

    invoke-direct {v3, v10, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "balance"

    invoke-direct {v4, v12, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v4, 0x408f400000000000L  # 1000.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 128
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v13, "10"

    invoke-direct {v3, v10, v13}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "pan"

    invoke-direct {v13, v12, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v13}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 136
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "11"

    invoke-direct {v3, v10, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v11, v6, v11}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v6, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v6, v12, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v6, -0x3f72000000000000L  # -960.0

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 144
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "91"

    invoke-direct {v3, v10, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v6, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v7, "reverb"

    invoke-direct {v6, v12, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 152
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "93"

    invoke-direct {v3, v10, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v6, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v6, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v7, "chorus"

    invoke-direct {v6, v12, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 160
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "71"

    invoke-direct {v3, v10, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v11, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v6, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v7, "filter"

    const-string v12, "q"

    invoke-direct {v6, v7, v12}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v12, 0x4069000000000000L  # 200.0

    invoke-direct {v1, v2, v12, v13, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 167
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v6, "74"

    invoke-direct {v3, v10, v6}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v11, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v6, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v12, "freq"

    invoke-direct {v6, v7, v12}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v4, 0x40c2c00000000000L  # 9600.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 175
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "72"

    invoke-direct {v3, v10, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "release2"

    invoke-direct {v4, v8, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v4, 0x40b7700000000000L  # 6000.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 183
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "73"

    invoke-direct {v3, v10, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "attack2"

    invoke-direct {v4, v8, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v4, 0x409f400000000000L  # 2000.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 191
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "75"

    invoke-direct {v3, v10, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "decay2"

    invoke-direct {v4, v8, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v4, 0x40b7700000000000L  # 6000.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 199
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "67"

    invoke-direct {v3, v10, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v4, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_GAIN:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, -0x3fb7000000000000L  # -50.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 207
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "67"

    invoke-direct {v3, v10, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v4, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_FILTER_FREQ:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v4, -0x3f5d400000000000L  # -2400.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 215
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "1"

    invoke-direct {v3, v15, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v4, v9, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 223
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "2"

    invoke-direct {v3, v15, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v4, v9, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, 0x40c9000000000000L  # 12800.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 231
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "master"

    const-string v5, "fine_tuning"

    invoke-direct {v3, v4, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v4, v9, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 239
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelSource;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "master"

    const-string v5, "coarse_tuning"

    invoke-direct {v3, v4, v5}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v11, v4}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v3, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v4, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v4, v9, v14}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v4, 0x40c9000000000000L  # 12800.0

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 247
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v12, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v5, 0x40ca5e0000000000L  # 13500.0

    invoke-direct {v1, v5, v6, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 250
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v5, "delay"

    invoke-direct {v3, v8, v5, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide/high16 v6, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 253
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "attack"

    invoke-direct {v3, v8, v9, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 256
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "hold"

    invoke-direct {v3, v8, v9, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 259
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "decay"

    invoke-direct {v3, v8, v9, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 262
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "sustain"

    invoke-direct {v3, v8, v9, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v9, 0x408f400000000000L  # 1000.0

    invoke-direct {v1, v9, v10, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 264
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v9, "release"

    invoke-direct {v3, v8, v9, v4}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 267
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    const-wide v2, 0x3f8eb851eb851eb8L  # 0.015

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v9, 0x4092c00000000000L  # 1200.0

    mul-double v2, v2, v9

    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v2, v9

    new-instance v4, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v9, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v10, "shutdown"

    const/4 v13, 0x0

    invoke-direct {v9, v8, v10, v13}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v4, v9}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 271
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v8, v5, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 274
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "attack"

    invoke-direct {v3, v8, v4, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 277
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "hold"

    invoke-direct {v3, v8, v4, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 280
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "decay"

    invoke-direct {v3, v8, v4, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 283
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "sustain"

    invoke-direct {v3, v8, v4, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v3, 0x408f400000000000L  # 1000.0

    invoke-direct {v1, v3, v4, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 285
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "release"

    invoke-direct {v3, v8, v4, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 289
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v4, "lfo"

    const/4 v8, 0x0

    invoke-direct {v3, v4, v12, v8}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v9, -0x3fdef940789613d3L  # -8.51318

    invoke-direct {v1, v9, v10, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 291
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v4, v5, v8}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 294
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v4, v12, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    const-wide v8, -0x3fdef940789613d3L  # -8.51318

    invoke-direct {v1, v8, v9, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 296
    sget-object v0, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v2, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v3, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v3, v4, v5, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v6, v7, v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(DLcom/codemao/midi/sun/ModelDestination;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 326
    new-instance v0, Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;-><init>(Lcom/codemao/midi/sun/SoftPerformer$1;)V

    sput-object v0, Lcom/codemao/midi/sun/SoftPerformer;->keySortComparator:Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelPerformer;)V
    .registers 25

    move-object/from16 v0, p0

    .line 467
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 305
    iput v1, v0, Lcom/codemao/midi/sun/SoftPerformer;->exclusiveClass:I

    .line 306
    iput-boolean v1, v0, Lcom/codemao/midi/sun/SoftPerformer;->selfNonExclusive:Z

    .line 307
    iput-boolean v1, v0, Lcom/codemao/midi/sun/SoftPerformer;->forcedVelocity:Z

    .line 308
    iput-boolean v1, v0, Lcom/codemao/midi/sun/SoftPerformer;->forcedKeynumber:Z

    .line 312
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    .line 313
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyFrom()I

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getKeyTo()I

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getVelFrom()I

    .line 473
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getVelTo()I

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getExclusiveClass()I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->exclusiveClass:I

    .line 475
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->isSelfNonExclusive()Z

    move-result v2

    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->selfNonExclusive:Z

    .line 477
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 479
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getConnectionBlocks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->isDefaultConnectionsEnabled()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_324

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 487
    :goto_55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const-wide/high16 v9, 0x4070000000000000L  # 256.0

    const-string v11, "5"

    const-string v12, "midi_rpn"

    const-string v13, "1"

    const-string v14, "midi_cc"

    if-ge v4, v8, :cond_d8

    .line 488
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 489
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v15

    .line 490
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v16

    if-eqz v16, :cond_a4

    if-eqz v15, :cond_a4

    .line 492
    array-length v5, v15

    if-le v5, v6, :cond_a4

    const/4 v5, 0x0

    .line 493
    :goto_7b
    array-length v1, v15

    if-ge v5, v1, :cond_a4

    .line 496
    aget-object v1, v15, v5

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 498
    aget-object v1, v15, v5

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_a5

    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    :cond_a4
    const/4 v1, 0x0

    :goto_a5
    if-eqz v1, :cond_d3

    .line 509
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    invoke-direct {v1}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>()V

    .line 510
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setSources([Lcom/codemao/midi/sun/ModelSource;)V

    .line 511
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setDestination(Lcom/codemao/midi/sun/ModelDestination;)V

    .line 512
    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    new-instance v13, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v13, v12, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v13}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->addSource(Lcom/codemao/midi/sun/ModelSource;)V

    .line 514
    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getScale()D

    move-result-wide v11

    mul-double v11, v11, v9

    invoke-virtual {v1, v11, v12}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setScale(D)V

    .line 515
    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d3
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_55

    :cond_d8
    if-nez v7, :cond_11b

    .line 520
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v4, Lcom/codemao/midi/sun/ModelSource;

    sget-object v5, Lcom/codemao/midi/sun/ModelSource;->SOURCE_LFO1:Lcom/codemao/midi/sun/ModelIdentifier;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v6, v7}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    new-instance v8, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v8, v14, v13, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v8, v7, v7, v7}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    const-wide/high16 v20, 0x4049000000000000L  # 50.0

    new-instance v7, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v8, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v7, v8}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v7

    invoke-direct/range {v17 .. v22}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 531
    new-instance v4, Lcom/codemao/midi/sun/ModelSource;

    new-instance v5, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v5, v12, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-virtual {v1, v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->addSource(Lcom/codemao/midi/sun/ModelSource;)V

    .line 533
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getScale()D

    move-result-wide v4

    mul-double v4, v4, v9

    invoke-virtual {v1, v4, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setScale(D)V

    .line 534
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_11b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_123
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "poly_pressure"

    const-string v11, "channel_pressure"

    const-string v12, "midi"

    if-eqz v9, :cond_194

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 545
    invoke-virtual {v9}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v15

    .line 546
    invoke-virtual {v9}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v17

    if-eqz v17, :cond_18e

    if-eqz v15, :cond_18e

    move-object/from16 v18, v1

    const/4 v6, 0x0

    .line 549
    :goto_144
    array-length v1, v15

    if-ge v6, v1, :cond_18b

    .line 550
    aget-object v1, v15, v6

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v1

    move-object/from16 v19, v4

    .line 553
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    .line 554
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_166

    move v8, v6

    move-object/from16 v19, v9

    .line 561
    :cond_166
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_186

    .line 562
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17b

    const/4 v5, 0x1

    .line 564
    :cond_17b
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    const/4 v7, 0x1

    :cond_186
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v19

    goto :goto_144

    :cond_18b
    move-object/from16 v19, v4

    goto :goto_190

    :cond_18e
    move-object/from16 v18, v1

    :goto_190
    move-object/from16 v1, v18

    const/4 v6, 0x1

    goto :goto_123

    :cond_194
    if-eqz v4, :cond_20e

    if-nez v5, :cond_1d2

    .line 574
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    invoke-direct {v1}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>()V

    .line 575
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setDestination(Lcom/codemao/midi/sun/ModelDestination;)V

    .line 576
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getScale()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setScale(D)V

    .line 577
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v5

    .line 578
    array-length v6, v5

    new-array v9, v6, [Lcom/codemao/midi/sun/ModelSource;

    const/4 v13, 0x0

    :goto_1b3
    if-ge v13, v6, :cond_1bc

    .line 580
    aget-object v15, v5, v13

    aput-object v15, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b3

    .line 581
    :cond_1bc
    new-instance v5, Lcom/codemao/midi/sun/ModelSource;

    new-instance v6, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v6, v12, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    aput-object v5, v9, v8

    .line 583
    invoke-virtual {v1, v9}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setSources([Lcom/codemao/midi/sun/ModelSource;)V

    .line 584
    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d2
    if-nez v7, :cond_20e

    .line 587
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    invoke-direct {v1}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>()V

    .line 588
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setDestination(Lcom/codemao/midi/sun/ModelDestination;)V

    .line 589
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getScale()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setScale(D)V

    .line 590
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v4

    .line 591
    array-length v5, v4

    new-array v6, v5, [Lcom/codemao/midi/sun/ModelSource;

    const/4 v7, 0x0

    :goto_1ef
    if-ge v7, v5, :cond_1f8

    .line 593
    aget-object v9, v4, v7

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1ef

    .line 594
    :cond_1f8
    new-instance v4, Lcom/codemao/midi/sun/ModelSource;

    new-instance v5, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v5, v12, v10}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    aput-object v4, v6, v8

    .line 596
    invoke-virtual {v1, v6}, Lcom/codemao/midi/sun/ModelConnectionBlock;->setSources([Lcom/codemao/midi/sun/ModelSource;)V

    .line 597
    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_20e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_213
    :goto_213
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "lfo"

    if-eqz v5, :cond_283

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 604
    invoke-virtual {v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v7

    .line 605
    array-length v8, v7

    if-eqz v8, :cond_213

    const/4 v8, 0x0

    aget-object v9, v7, v8

    .line 606
    invoke-virtual {v9}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_213

    .line 607
    invoke-virtual {v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelDestination;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v6

    sget-object v8, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-virtual {v6, v8}, Lcom/codemao/midi/sun/ModelIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_213

    if-nez v4, :cond_24c

    goto :goto_281

    .line 612
    :cond_24c
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v6

    array-length v6, v6

    array-length v8, v7

    if-le v6, v8, :cond_255

    goto :goto_281

    .line 614
    :cond_255
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    .line 615
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v6

    const/4 v9, 0x1

    if-ge v6, v9, :cond_213

    .line 616
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v6

    aget-object v6, v6, v8

    .line 617
    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v6

    aget-object v7, v7, v8

    .line 618
    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v7

    if-le v6, v7, :cond_213

    :goto_281
    move-object v4, v5

    goto :goto_213

    :cond_283
    if-eqz v4, :cond_296

    .line 631
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Lcom/codemao/midi/sun/ModelIdentifier;->getInstance()I

    move-result v1

    move v9, v1

    goto :goto_298

    :cond_296
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 636
    :goto_298
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v7, Lcom/codemao/midi/sun/ModelSource;

    new-instance v8, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v10, "78"

    invoke-direct {v8, v14, v10}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {v7, v8, v5, v10, v5}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    const-wide v10, 0x409f400000000000L  # 2000.0

    new-instance v5, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v8, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v12, "delay2"

    invoke-direct {v8, v6, v12, v9}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v8}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v7, v10, v11, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 643
    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_2c7

    const-wide/16 v4, 0x0

    goto :goto_2cb

    .line 646
    :cond_2c7
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getScale()D

    move-result-wide v4

    .line 647
    :goto_2cb
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v7, Lcom/codemao/midi/sun/ModelSource;

    new-instance v8, Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v8, v6, v9}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;I)V

    invoke-direct {v7, v8}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    new-instance v8, Lcom/codemao/midi/sun/ModelSource;

    new-instance v10, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v11, "77"

    invoke-direct {v10, v14, v11}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/codemao/midi/sun/SoftPerformer$2;

    invoke-direct {v11, v0, v4, v5}, Lcom/codemao/midi/sun/SoftPerformer$2;-><init>(Lcom/codemao/midi/sun/SoftPerformer;D)V

    invoke-direct {v8, v10, v11}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;Lcom/codemao/midi/sun/ModelTransform;)V

    new-instance v4, Lcom/codemao/midi/sun/ModelDestination;

    sget-object v5, Lcom/codemao/midi/sun/ModelDestination;->DESTINATION_PITCH:Lcom/codemao/midi/sun/ModelIdentifier;

    invoke-direct {v4, v5}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v7, v8, v4}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelDestination;)V

    .line 668
    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v1, Lcom/codemao/midi/sun/ModelConnectionBlock;

    new-instance v4, Lcom/codemao/midi/sun/ModelSource;

    new-instance v5, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v7, "76"

    invoke-direct {v5, v14, v7}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v7, v8}, Lcom/codemao/midi/sun/ModelSource;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;ZZI)V

    const-wide v7, 0x40a2c00000000000L  # 2400.0

    new-instance v5, Lcom/codemao/midi/sun/ModelDestination;

    new-instance v10, Lcom/codemao/midi/sun/ModelIdentifier;

    const-string v11, "freq"

    invoke-direct {v10, v6, v11, v9}, Lcom/codemao/midi/sun/ModelIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v10}, Lcom/codemao/midi/sun/ModelDestination;-><init>(Lcom/codemao/midi/sun/ModelIdentifier;)V

    invoke-direct {v1, v4, v7, v8, v5}, Lcom/codemao/midi/sun/ModelConnectionBlock;-><init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V

    .line 677
    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_324
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->isDefaultConnectionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_33c

    .line 683
    sget-object v1, Lcom/codemao/midi/sun/SoftPerformer;->defaultconnections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    array-length v4, v1

    const/4 v7, 0x0

    :goto_32e
    if-ge v7, v4, :cond_33c

    aget-object v5, v1, v7

    .line 684
    invoke-direct {v0, v5}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_32e

    .line 686
    :cond_33c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_340
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_354

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 687
    invoke-direct {v0, v3}, Lcom/codemao/midi/sun/SoftPerformer;->extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_340

    .line 690
    :cond_354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x80

    new-array v3, v3, [[I

    .line 692
    iput-object v3, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_ctrl_connections:[[I

    const/4 v7, 0x0

    .line 693
    :goto_360
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_ctrl_connections:[[I

    array-length v4, v3

    if-ge v7, v4, :cond_36b

    const/4 v4, 0x0

    .line 694
    aput-object v4, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_360

    :cond_36b
    const/4 v4, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [[I

    .line 696
    iput-object v3, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    const/4 v7, 0x0

    .line 697
    :goto_372
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    array-length v5, v3

    if-ge v7, v5, :cond_37d

    .line 698
    aput-object v4, v3, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_372

    .line 704
    :cond_37d
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_385
    const/4 v7, 0x0

    :goto_386
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 705
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v4

    if-eqz v4, :cond_3cb

    .line 706
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v4

    .line 707
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelDestination;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v4

    .line 708
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v5

    const-string v6, "noteon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3cb

    .line 710
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v5

    const-string v6, "keynumber"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_3bb

    .line 711
    iput-boolean v9, v0, Lcom/codemao/midi/sun/SoftPerformer;->forcedKeynumber:Z

    .line 712
    :cond_3bb
    invoke-virtual {v4}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object v4

    const-string v5, "velocity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c9

    .line 713
    iput-boolean v9, v0, Lcom/codemao/midi/sun/SoftPerformer;->forcedVelocity:Z

    :cond_3c9
    const/4 v7, 0x1

    goto :goto_3cc

    :cond_3cb
    const/4 v9, 0x1

    :goto_3cc
    if-eqz v7, :cond_3d3

    const/4 v4, 0x0

    .line 717
    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_385

    :cond_3d3
    const/4 v4, 0x0

    .line 720
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_386

    :cond_3d8
    const/4 v4, 0x0

    .line 723
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_3de
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_403

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 724
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v5

    if-eqz v5, :cond_400

    .line 725
    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v3

    const/4 v5, 0x0

    .line 726
    :goto_3f5
    array-length v6, v3

    if-ge v5, v6, :cond_400

    .line 727
    aget-object v6, v3, v5

    invoke-direct {v0, v6, v7}, Lcom/codemao/midi/sun/SoftPerformer;->processSource(Lcom/codemao/midi/sun/ModelSource;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3f5

    :cond_400
    add-int/lit8 v7, v7, 0x1

    goto :goto_3de

    .line 733
    :cond_403
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/codemao/midi/sun/ModelConnectionBlock;

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->connections:[Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 734
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 736
    iget-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections:[I

    const/4 v7, 0x0

    .line 738
    :goto_419
    iget-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections:[I

    array-length v3, v2

    if-ge v7, v3, :cond_42f

    .line 739
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_419

    .line 741
    :cond_42f
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/codemao/midi/sun/ModelOscillator;

    iput-object v2, v0, Lcom/codemao/midi/sun/SoftPerformer;->oscillators:[Lcom/codemao/midi/sun/ModelOscillator;

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/ModelPerformer;->getOscillators()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/codemao/midi/sun/SoftPerformer;->oscillators:[Lcom/codemao/midi/sun/ModelOscillator;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 744
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_448
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_495

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/ModelConnectionBlock;

    .line 745
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v3

    if-eqz v3, :cond_470

    .line 746
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelDestination;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/midi/sun/SoftPerformer;->isUnnecessaryTransform(Lcom/codemao/midi/sun/ModelTransform;)Z

    move-result v3

    if-eqz v3, :cond_470

    .line 747
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/codemao/midi/sun/ModelDestination;->setTransform(Lcom/codemao/midi/sun/ModelTransform;)V

    .line 750
    :cond_470
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v3

    if-eqz v3, :cond_493

    .line 751
    invoke-virtual {v2}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_47c
    if-ge v7, v3, :cond_493

    aget-object v5, v2, v7

    .line 752
    invoke-virtual {v5}, Lcom/codemao/midi/sun/ModelSource;->getTransform()Lcom/codemao/midi/sun/ModelTransform;

    move-result-object v6

    invoke-static {v6}, Lcom/codemao/midi/sun/SoftPerformer;->isUnnecessaryTransform(Lcom/codemao/midi/sun/ModelTransform;)Z

    move-result v6

    if-eqz v6, :cond_48f

    const/4 v6, 0x0

    .line 753
    invoke-virtual {v5, v6}, Lcom/codemao/midi/sun/ModelSource;->setTransform(Lcom/codemao/midi/sun/ModelTransform;)V

    goto :goto_490

    :cond_48f
    const/4 v6, 0x0

    :goto_490
    add-int/lit8 v7, v7, 0x1

    goto :goto_47c

    :cond_493
    const/4 v6, 0x0

    goto :goto_448

    :cond_495
    return-void
.end method

.method private extractKeys(Lcom/codemao/midi/sun/ModelConnectionBlock;)Ljava/lang/String;
    .registers 9

    .line 329
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v1

    const-string v2, ";"

    if-eqz v1, :cond_41

    const-string v1, "["

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getSources()[Lcom/codemao/midi/sun/ModelSource;

    move-result-object v1

    .line 333
    array-length v3, v1

    new-array v3, v3, [Lcom/codemao/midi/sun/ModelSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 334
    :goto_1b
    array-length v6, v1

    if-ge v5, v6, :cond_25

    .line 335
    aget-object v6, v1, v5

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 336
    :cond_25
    sget-object v5, Lcom/codemao/midi/sun/SoftPerformer;->keySortComparator:Lcom/codemao/midi/sun/SoftPerformer$KeySortComparator;

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 337
    :goto_2a
    array-length v3, v1

    if-ge v4, v3, :cond_3c

    .line 338
    aget-object v3, v1, v4

    invoke-virtual {v3}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_3c
    const-string v1, "]"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    :cond_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 345
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelConnectionBlock;->getDestination()Lcom/codemao/midi/sun/ModelDestination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelDestination;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 347
    :cond_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static isUnnecessaryTransform(Lcom/codemao/midi/sun/ModelTransform;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 764
    :cond_4
    instance-of v1, p0, Lcom/codemao/midi/sun/ModelStandardTransform;

    if-nez v1, :cond_9

    return v0

    .line 766
    :cond_9
    check-cast p0, Lcom/codemao/midi/sun/ModelStandardTransform;

    .line 767
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelStandardTransform;->getDirection()Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    .line 769
    :cond_12
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelStandardTransform;->getPolarity()Z

    move-result v1

    if-eqz v1, :cond_19

    return v0

    .line 771
    :cond_19
    invoke-virtual {p0}, Lcom/codemao/midi/sun/ModelStandardTransform;->getTransform()I

    return v0
.end method

.method private processMidiControlSource(Lcom/codemao/midi/sun/ModelSource;I)V
    .registers 9

    .line 373
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 376
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 377
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_ctrl_connections:[[I

    aget-object v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1e

    new-array v1, v3, [I

    aput p2, v1, v2

    .line 378
    aput-object v1, v0, p1

    goto :goto_35

    .line 380
    :cond_1e
    aget-object v0, v0, p1

    .line 381
    array-length v1, v0

    add-int/2addr v1, v3

    new-array v4, v1, [I

    .line 382
    :goto_24
    array-length v5, v0

    if-ge v2, v5, :cond_2e

    .line 383
    aget v5, v0, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    sub-int/2addr v1, v3

    .line 384
    aput p2, v4, v1

    .line 385
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_ctrl_connections:[[I

    aput-object v4, p2, p1

    :goto_35
    return-void
.end method

.method private processMidiNrpnSource(Lcom/codemao/midi/sun/ModelSource;I)V
    .registers 9

    .line 451
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 454
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 455
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    .line 456
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [I

    aput p2, v2, v1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 458
    :cond_2b
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 459
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v4, v3, [I

    .line 460
    :goto_3b
    array-length v5, v0

    if-ge v1, v5, :cond_45

    .line 461
    aget v5, v0, v1

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_45
    sub-int/2addr v3, v2

    .line 462
    aput p2, v4, v3

    .line 463
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_nrpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_51
    return-void
.end method

.method private processMidiRpnSource(Lcom/codemao/midi/sun/ModelSource;I)V
    .registers 9

    .line 434
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 437
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 438
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2b

    .line 439
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [I

    aput p2, v2, v1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 441
    :cond_2b
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 442
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v4, v3, [I

    .line 443
    :goto_3b
    array-length v5, v0

    if-ge v1, v5, :cond_45

    .line 444
    aget v5, v0, v1

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_45
    sub-int/2addr v3, v2

    .line 445
    aput p2, v4, v3

    .line 446
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_rpn_connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_51
    return-void
.end method

.method private processMidiSource(Lcom/codemao/midi/sun/ModelSource;I)V
    .registers 9

    .line 411
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pitch"

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    const-string v3, "channel_pressure"

    .line 415
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    const-string v3, "poly_pressure"

    .line 417
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 v0, 0x2

    :cond_28
    if-ne v0, v1, :cond_2b

    return-void

    .line 421
    :cond_2b
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    aget-object v1, p1, v0

    if-nez v1, :cond_38

    new-array v1, v4, [I

    aput p2, v1, v2

    .line 422
    aput-object v1, p1, v0

    goto :goto_4f

    .line 424
    :cond_38
    aget-object p1, p1, v0

    .line 425
    array-length v1, p1

    add-int/2addr v1, v4

    new-array v3, v1, [I

    .line 426
    :goto_3e
    array-length v5, p1

    if-ge v2, v5, :cond_48

    .line 427
    aget v5, p1, v2

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_48
    sub-int/2addr v1, v4

    .line 428
    aput p2, v3, v1

    .line 429
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    aput-object v3, p1, v0

    :goto_4f
    return-void
.end method

.method private processNoteOnSource(Lcom/codemao/midi/sun/ModelSource;I)V
    .registers 9

    .line 390
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelIdentifier;->getVariable()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    const-string v2, "keynumber"

    .line 394
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v0, 0x4

    :cond_1d
    if-ne v0, v1, :cond_20

    return-void

    .line 398
    :cond_20
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    aget-object v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2f

    new-array v1, v3, [I

    aput p2, v1, v2

    .line 399
    aput-object v1, p1, v0

    goto :goto_46

    .line 401
    :cond_2f
    aget-object p1, p1, v0

    .line 402
    array-length v1, p1

    add-int/2addr v1, v3

    new-array v4, v1, [I

    .line 403
    :goto_35
    array-length v5, p1

    if-ge v2, v5, :cond_3f

    .line 404
    aget v5, p1, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_3f
    sub-int/2addr v1, v3

    .line 405
    aput p2, v4, v1

    .line 406
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftPerformer;->midi_connections:[[I

    aput-object v4, p1, v0

    :goto_46
    return-void
.end method

.method private processSource(Lcom/codemao/midi/sun/ModelSource;I)V
    .registers 5

    .line 352
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelSource;->getIdentifier()Lcom/codemao/midi/sun/ModelIdentifier;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/codemao/midi/sun/ModelIdentifier;->getObject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "midi_cc"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftPerformer;->processMidiControlSource(Lcom/codemao/midi/sun/ModelSource;I)V

    goto :goto_5f

    :cond_14
    const-string v1, "midi_rpn"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftPerformer;->processMidiRpnSource(Lcom/codemao/midi/sun/ModelSource;I)V

    goto :goto_5f

    :cond_20
    const-string v1, "midi_nrpn"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftPerformer;->processMidiNrpnSource(Lcom/codemao/midi/sun/ModelSource;I)V

    goto :goto_5f

    :cond_2c
    const-string v1, "midi"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftPerformer;->processMidiSource(Lcom/codemao/midi/sun/ModelSource;I)V

    goto :goto_5f

    :cond_38
    const-string v1, "noteon"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 363
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/sun/SoftPerformer;->processNoteOnSource(Lcom/codemao/midi/sun/ModelSource;I)V

    goto :goto_5f

    :cond_44
    const-string p1, "osc"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    return-void

    :cond_4d
    const-string p1, "mixer"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    return-void

    .line 369
    :cond_56
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftPerformer;->ctrl_connections_list:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5f
    return-void
.end method
