.class Lcom/codemao/midi/sun/SoftMainMixer$1;
.super Ljava/lang/Object;
.source "SoftMainMixer.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftMainMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field balance:[D

.field coarse_tuning:[D

.field fine_tuning:[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftMainMixer;

.field volume:[D


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftMainMixer;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->this$0:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$000(Lcom/codemao/midi/sun/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->balance:[D

    .line 103
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$100(Lcom/codemao/midi/sun/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->volume:[D

    .line 104
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$200(Lcom/codemao/midi/sun/SoftMainMixer;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->coarse_tuning:[D

    .line 105
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$300(Lcom/codemao/midi/sun/SoftMainMixer;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->fine_tuning:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const-string v0, "balance"

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->balance:[D

    return-object p1

    :cond_f
    const-string v0, "volume"

    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 113
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->volume:[D

    return-object p1

    :cond_1a
    const-string v0, "coarse_tuning"

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 115
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->coarse_tuning:[D

    return-object p1

    :cond_25
    const-string v0, "fine_tuning"

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 117
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$1;->fine_tuning:[D

    :cond_2f
    return-object p1
.end method
