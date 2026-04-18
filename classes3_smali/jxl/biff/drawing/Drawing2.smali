.class public Ljxl/biff/drawing/Drawing2;
.super Ljava/lang/Object;
.source "Drawing2.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# instance fields
.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private shapeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Ljxl/biff/drawing/Drawing;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;)V
    .registers 5

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 150
    iput-object p3, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 151
    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 152
    iput-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 153
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    .line 154
    sget-object p3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p3, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    .line 156
    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    .line 157
    iget-object p2, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    .line 159
    :cond_21
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 161
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    return-void
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .registers 2

    .line 530
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 532
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 535
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .registers 2

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    return-void
.end method


# virtual methods
.method public getImageFilePath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 684
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .registers 2

    .line 315
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .registers 2

    .line 270
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 272
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 275
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .registers 2

    .line 363
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getShapeId()I
    .registers 2

    .line 285
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 287
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 290
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing2;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .registers 3

    .line 325
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing2;->initialized:Z

    if-nez v0, :cond_7

    .line 327
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->initialize()V

    .line 330
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 332
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing2;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    return-object v0
.end method

.method public isFirst()Z
    .registers 2

    .line 647
    iget-object v0, p0, Ljxl/biff/drawing/Drawing2;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .registers 2

    .line 343
    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public final setObjectId(III)V
    .registers 4

    .line 253
    iput p1, p0, Ljxl/biff/drawing/Drawing2;->objectId:I

    .line 255
    iput p3, p0, Ljxl/biff/drawing/Drawing2;->shapeId:I

    .line 257
    iget-object p1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_e

    .line 259
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing2;->origin:Ljxl/biff/drawing/Origin;

    :cond_e
    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
