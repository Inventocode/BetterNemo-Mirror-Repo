.class public Ljxl/format/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field public static final ALL:Ljxl/format/Border;

.field public static final BOTTOM:Ljxl/format/Border;

.field public static final LEFT:Ljxl/format/Border;

.field public static final NONE:Ljxl/format/Border;

.field public static final RIGHT:Ljxl/format/Border;

.field public static final TOP:Ljxl/format/Border;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljxl/format/Border;

    const-string v1, "none"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    .line 49
    new-instance v0, Ljxl/format/Border;

    const-string v1, "all"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    .line 50
    new-instance v0, Ljxl/format/Border;

    const-string v1, "top"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    .line 51
    new-instance v0, Ljxl/format/Border;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    .line 52
    new-instance v0, Ljxl/format/Border;

    const-string v1, "left"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    .line 53
    new-instance v0, Ljxl/format/Border;

    const-string v1, "right"

    invoke-direct {v0, v1}, Ljxl/format/Border;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
