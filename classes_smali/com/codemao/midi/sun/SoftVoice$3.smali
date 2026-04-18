.class Lcom/codemao/midi/sun/SoftVoice$3;
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
.field pitch:[D

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftVoice;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftVoice;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$3;->this$0:Lcom/codemao/midi/sun/SoftVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftVoice;->access$600(Lcom/codemao/midi/sun/SoftVoice;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$3;->pitch:[D

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    const/4 p1, 0x0

    if-nez p2, :cond_4

    return-object p1

    :cond_4
    const-string v0, "pitch"

    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 160
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftVoice$3;->pitch:[D

    :cond_e
    return-object p1
.end method
