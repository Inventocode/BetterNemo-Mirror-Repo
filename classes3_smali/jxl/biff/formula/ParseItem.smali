.class abstract Ljxl/biff/formula/ParseItem;
.super Ljava/lang/Object;
.source "ParseItem.java"


# instance fields
.field private alternateCode:Z

.field private parent:Ljxl/biff/formula/ParseItem;

.field private parseContext:Ljxl/biff/formula/ParseContext;

.field private volatileFunction:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Ljxl/biff/formula/ParseItem;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    .line 65
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    .line 67
    sget-object v0, Ljxl/biff/formula/ParseContext;->DEFAULT:Ljxl/biff/formula/ParseContext;

    iput-object v0, p0, Ljxl/biff/formula/ParseItem;->parseContext:Ljxl/biff/formula/ParseContext;

    return-void
.end method


# virtual methods
.method abstract getBytes()[B
.end method

.method protected final getParseContext()Ljxl/biff/formula/ParseContext;
    .registers 2

    .line 236
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parseContext:Ljxl/biff/formula/ParseContext;

    return-object v0
.end method

.method abstract getString(Ljava/lang/StringBuffer;)V
.end method

.method final isVolatile()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    return v0
.end method

.method protected setAlternateCode()V
    .registers 2

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    return-void
.end method

.method protected setParent(Ljxl/biff/formula/ParseItem;)V
    .registers 2

    .line 75
    iput-object p1, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    return-void
.end method

.method protected setParseContext(Ljxl/biff/formula/ParseContext;)V
    .registers 2

    .line 226
    iput-object p1, p0, Ljxl/biff/formula/ParseItem;->parseContext:Ljxl/biff/formula/ParseContext;

    return-void
.end method

.method protected setVolatile()V
    .registers 2

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Ljxl/biff/formula/ParseItem;->volatileFunction:Z

    .line 84
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_12

    .line 86
    iget-object v0, p0, Ljxl/biff/formula/ParseItem;->parent:Ljxl/biff/formula/ParseItem;

    invoke-virtual {v0}, Ljxl/biff/formula/ParseItem;->setVolatile()V

    :cond_12
    return-void
.end method

.method protected final useAlternateCode()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Ljxl/biff/formula/ParseItem;->alternateCode:Z

    return v0
.end method
