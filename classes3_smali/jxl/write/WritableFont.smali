.class public Ljxl/write/WritableFont;
.super Ljxl/write/biff/WritableFontRecord;
.source "WritableFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/WritableFont$BoldStyle;,
        Ljxl/write/WritableFont$FontName;
    }
.end annotation


# static fields
.field public static final ARIAL:Ljxl/write/WritableFont$FontName;

.field public static final BOLD:Ljxl/write/WritableFont$BoldStyle;

.field public static final NO_BOLD:Ljxl/write/WritableFont$BoldStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Arial"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    .line 85
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Times New Roman"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Courier New"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljxl/write/WritableFont$FontName;

    const-string v1, "Tahoma"

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$FontName;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljxl/write/WritableFont$BoldStyle;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$BoldStyle;-><init>(I)V

    sput-object v0, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    .line 106
    new-instance v0, Ljxl/write/WritableFont$BoldStyle;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Ljxl/write/WritableFont$BoldStyle;-><init>(I)V

    sput-object v0, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    return-void
.end method

.method public constructor <init>(Ljxl/format/Font;)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Ljxl/write/biff/WritableFontRecord;-><init>(Ljxl/format/Font;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;)V
    .registers 10

    .line 121
    sget-object v3, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    const/16 v2, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;I)V
    .registers 11

    .line 149
    sget-object v3, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V
    .registers 12

    .line 164
    sget-object v5, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v6, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V
    .registers 15

    .line 225
    sget-object v7, Ljxl/format/ScriptStyle;->NORMAL_SCRIPT:Ljxl/format/ScriptStyle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V
    .registers 16

    .line 250
    iget-object v1, p1, Ljxl/write/WritableFont$FontName;->name:Ljava/lang/String;

    iget v3, p3, Ljxl/write/WritableFont$BoldStyle;->value:I

    invoke-virtual {p5}, Ljxl/format/UnderlineStyle;->getValue()I

    move-result v5

    invoke-virtual {p6}, Ljxl/format/Colour;->getValue()I

    move-result v6

    invoke-virtual {p7}, Ljxl/format/ScriptStyle;->getValue()I

    move-result v7

    move-object v0, p0

    move v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v7}, Ljxl/write/biff/WritableFontRecord;-><init>(Ljava/lang/String;IIZIII)V

    return-void
.end method


# virtual methods
.method public isStruckout()Z
    .registers 2

    .line 332
    invoke-super {p0}, Ljxl/biff/FontRecord;->isStruckout()Z

    move-result v0

    return v0
.end method

.method public setColour(Ljxl/format/Colour;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 310
    invoke-virtual {p1}, Ljxl/format/Colour;->getValue()I

    move-result p1

    invoke-super {p0, p1}, Ljxl/write/biff/WritableFontRecord;->setColour(I)V

    return-void
.end method
