.class public Ljxl/biff/drawing/Drawing;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Drawing$ImageAnchorProperties;
    }
.end annotation


# static fields
.field public static MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private blipId:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private height:D

.field private imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field private imageData:[B

.field private imageFile:Ljava/io/File;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private shapeId:I

.field private sheet:Ljxl/Sheet;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-class v0, Ljxl/biff/drawing/Drawing;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    .line 205
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 207
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 209
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .registers 6

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 255
    check-cast p1, Ljxl/biff/drawing/Drawing;

    .line 256
    iget-object v1, p1, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 257
    iget-object v1, p1, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 258
    iget-object v1, p1, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 259
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 260
    iput-object v2, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 261
    iget-object v0, p1, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 262
    iput-object p2, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 263
    iget p1, p1, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    iput p1, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    .line 264
    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V
    .registers 7

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 231
    iput-object p4, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 232
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 233
    iput-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 234
    iput-object p2, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 235
    iput-object p5, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    .line 236
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 237
    sget-object p4, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p4, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 238
    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 239
    iget-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p3}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    iput p3, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    .line 240
    iget-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p3, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    const/4 v0, 0x1

    .line 242
    :cond_31
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 244
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    return-void
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .registers 2

    .line 732
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_7

    .line 734
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 737
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .registers 7

    .line 326
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 327
    :goto_11
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 329
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 331
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v1

    check-cast v3, Ljxl/biff/drawing/Sp;

    .line 332
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    .line 333
    iget-object v4, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v4}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    .line 334
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    .line 336
    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_47

    .line 338
    sget-object v3, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 341
    :cond_47
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Ljxl/biff/drawing/Opt;

    const/16 v4, 0x104

    .line 343
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 345
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v4

    iget v4, v4, Ljxl/biff/drawing/Opt$Property;->value:I

    iput v4, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    :cond_61
    const/16 v4, 0x105

    .line 348
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 350
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v3

    iget-object v3, v3, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    goto :goto_91

    .line 354
    :cond_77
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_91

    .line 356
    sget-object v3, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v4, "no filename property for drawing"

    invoke-virtual {v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 357
    new-instance v3, Ljava/io/File;

    iget v4, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    :cond_91
    :goto_91
    const/4 v3, 0x0

    .line 362
    :goto_92
    array-length v4, v0

    if-ge v1, v4, :cond_a8

    if-nez v3, :cond_a8

    .line 364
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v4

    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_a5

    .line 366
    aget-object v3, v0, v1

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_a8
    if-nez v3, :cond_b2

    .line 372
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v1, "client anchor not found"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_da

    .line 376
    :cond_b2
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 377
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 378
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX2()D

    move-result-wide v0

    iget-wide v4, p0, Ljxl/biff/drawing/Drawing;->x:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 379
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY2()D

    move-result-wide v0

    iget-wide v4, p0, Ljxl/biff/drawing/Drawing;->y:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 380
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getProperties()I

    move-result v0

    invoke-static {v0}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;->getImageAnchorProperties(I)Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 384
    :goto_da
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    if-nez v0, :cond_e5

    .line 386
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Ljxl/common/Logger;

    const-string v1, "linked drawings are not supported"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 389
    :cond_e5
    iput-boolean v2, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    return-void
.end method


# virtual methods
.method public final getBlipId()I
    .registers 2

    .line 477
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_7

    .line 479
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 482
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    return v0
.end method

.method public getImageBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_3c

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_b

    goto :goto_3c

    .line 769
    :cond_b
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 771
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-nez v0, :cond_27

    .line 773
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    invoke-static {v2}, Ljxl/common/Assert;->verify(Z)V

    .line 774
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    return-object v0

    .line 777
    :cond_27
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 778
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 779
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 780
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    .line 766
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .registers 3

    .line 747
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_d

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 749
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_18

    .line 751
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 754
    :cond_18
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-nez v0, :cond_10

    .line 414
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    if-eqz v0, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    const-string v0, "__new__image__"

    :goto_f
    return-object v0

    .line 417
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .registers 2

    .line 492
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .registers 2

    .line 447
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_7

    .line 449
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 452
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .registers 2

    .line 565
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .registers 2

    .line 575
    iget v0, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    return v0
.end method

.method public getShapeId()I
    .registers 2

    .line 462
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_7

    .line 464
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 467
    :cond_7
    iget v0, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .registers 24

    move-object/from16 v0, p0

    .line 502
    iget-boolean v1, v0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v1, :cond_9

    .line 504
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 507
    :cond_9
    iget-object v1, v0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_14

    .line 509
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Drawing;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v1

    return-object v1

    .line 512
    :cond_14
    new-instance v1, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 513
    new-instance v2, Ljxl/biff/drawing/Sp;

    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    iget v4, v0, Ljxl/biff/drawing/Drawing;->shapeId:I

    const/16 v5, 0xa00

    invoke-direct {v2, v3, v4, v5}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 514
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 515
    new-instance v2, Ljxl/biff/drawing/Opt;

    invoke-direct {v2}, Ljxl/biff/drawing/Opt;-><init>()V

    const/16 v3, 0x104

    const/4 v4, 0x1

    .line 516
    iget v5, v0, Ljxl/biff/drawing/Drawing;->blipId:I

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v4, v12, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 518
    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_66

    .line 520
    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_46

    :cond_44
    const-string v3, ""

    :goto_46
    move-object v11, v3

    const/16 v7, 0x105

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 521
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v10, v3, 0x2

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Ljxl/biff/drawing/Opt;->addProperty(IZZILjava/lang/String;)V

    const/16 v3, 0x1bf

    const/high16 v4, 0x10000

    .line 522
    invoke-virtual {v2, v3, v12, v12, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v3, 0x3bf

    const/high16 v4, 0x80000

    .line 523
    invoke-virtual {v2, v3, v12, v12, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 524
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 527
    :cond_66
    new-instance v2, Ljxl/biff/drawing/ClientAnchor;

    iget-wide v14, v0, Ljxl/biff/drawing/Drawing;->x:D

    iget-wide v3, v0, Ljxl/biff/drawing/Drawing;->y:D

    iget-wide v5, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double v18, v14, v5

    iget-wide v5, v0, Ljxl/biff/drawing/Drawing;->height:D

    add-double v20, v3, v5

    iget-object v5, v0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    invoke-virtual {v5}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;->getValue()I

    move-result v22

    move-object v13, v2

    move-wide/from16 v16, v3

    invoke-direct/range {v13 .. v22}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 530
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 531
    new-instance v2, Ljxl/biff/drawing/ClientData;

    invoke-direct {v2}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 532
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    return-object v1
.end method

.method public isFirst()Z
    .registers 2

    .line 855
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

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

    .line 545
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public final setObjectId(III)V
    .registers 4

    .line 430
    iput p1, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    .line 431
    iput p2, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    .line 432
    iput p3, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    .line 434
    iget-object p1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_10

    .line 436
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    :cond_10
    return-void
.end method

.method public setReferenceCount(I)V
    .registers 2

    .line 585
    iput p1, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_c

    .line 804
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void

    .line 809
    :cond_c
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 811
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

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
