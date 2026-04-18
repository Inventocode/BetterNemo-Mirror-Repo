.class Lio/socket/parser/IOParser$BinaryReconstructor;
.super Ljava/lang/Object;
.source "IOParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/parser/IOParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryReconstructor"
.end annotation


# instance fields
.field buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public reconPack:Lio/socket/parser/Packet;


# direct methods
.method constructor <init>(Lio/socket/parser/Packet;)V
    .registers 2

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    .line 217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->buffers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public finishReconstruction()V
    .registers 2

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->buffers:Ljava/util/List;

    return-void
.end method

.method public takeBinaryData([B)Lio/socket/parser/Packet;
    .registers 4

    .line 221
    iget-object v0, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->buffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object p1, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->buffers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->reconPack:Lio/socket/parser/Packet;

    iget v1, v0, Lio/socket/parser/Packet;->attachments:I

    if-ne p1, v1, :cond_27

    .line 223
    iget-object p1, p0, Lio/socket/parser/IOParser$BinaryReconstructor;->buffers:Ljava/util/List;

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    .line 223
    invoke-static {v0, p1}, Lio/socket/parser/Binary;->reconstructPacket(Lio/socket/parser/Packet;[[B)Lio/socket/parser/Packet;

    move-result-object p1

    .line 225
    invoke-virtual {p0}, Lio/socket/parser/IOParser$BinaryReconstructor;->finishReconstruction()V

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method
