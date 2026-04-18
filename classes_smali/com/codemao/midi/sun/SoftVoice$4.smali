.class Lcom/codemao/midi/sun/SoftVoice$4;
.super Ljava/lang/Object;
.source "SoftVoice.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field freq:[D

.field ftype:[D

.field q:[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftVoice;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftVoice;)V
    .registers 3

    .line 167
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$4;->this$0:Lcom/codemao/midi/sun/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$700(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$4;->freq:[D

    .line 169
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$800(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftVoice$4;->ftype:[D

    .line 170
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$900(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$4;->q:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const-string v0, "freq"

    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 175
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$4;->freq:[D

    return-object p1

    :cond_f
    const-string v0, "type"

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 177
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$4;->ftype:[D

    return-object p1

    :cond_1a
    const-string v0, "q"

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 179
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$4;->q:[D

    :cond_24
    return-object p1
.end method
