.class Lcom/codemao/midi/sun/SoftChannel$2;
.super Ljava/lang/Object;
.source "SoftChannel.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rpn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftChannel;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftChannel;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$2;->this$0:Lcom/codemao/midi/sun/SoftChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-object p1, p1, Lcom/codemao/midi/sun/SoftChannel;->co_midi_rpn_rpn:Ljava/util/Map;

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChannel$2;->rpn:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(ILjava/lang/String;)[D
    .registers 4

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 172
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftChannel$2;->rpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    if-nez p2, :cond_22

    const/4 p2, 0x1

    new-array p2, p2, [D

    .line 175
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChannel$2;->rpn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object p2
.end method
