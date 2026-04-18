.class Ljxl/biff/formula/Name;
.super Ljxl/biff/formula/Operand;
.source "Name.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method


# virtual methods
.method getBytes()[B
    .registers 2

    const/4 v0, 0x6

    new-array v0, v0, [B

    return-object v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .registers 3

    const-string v0, "[Name record not implemented]"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public read([BI)I
    .registers 3

    const/4 p1, 0x6

    return p1
.end method
