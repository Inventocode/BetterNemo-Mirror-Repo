.class public final Ljxl/write/DateFormats;
.super Ljava/lang/Object;
.source "DateFormats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/DateFormats$BuiltInFormat;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljxl/biff/DisplayFormat;

.field public static final FORMAT1:Ljxl/biff/DisplayFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 145
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0xe

    const-string v2, "M/d/yy"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljxl/write/DateFormats;->FORMAT1:Ljxl/biff/DisplayFormat;

    .line 150
    sput-object v0, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    .line 155
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0xf

    const-string v2, "d-MMM-yy"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 161
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x10

    const-string v2, "d-MMM"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 167
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x11

    const-string v2, "MMM-yy"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 173
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x12

    const-string v2, "h:mm a"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 179
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x13

    const-string v2, "h:mm:ss a"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 185
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x14

    const-string v2, "H:mm"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 191
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x15

    const-string v2, "H:mm:ss"

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 197
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x16

    const-string v3, "M/d/yy H:mm"

    invoke-direct {v0, v1, v3}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 203
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x2d

    const-string v3, "mm:ss"

    invoke-direct {v0, v1, v3}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 209
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x2e

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    .line 215
    new-instance v0, Ljxl/write/DateFormats$BuiltInFormat;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, v2}, Ljxl/write/DateFormats$BuiltInFormat;-><init>(ILjava/lang/String;)V

    return-void
.end method
