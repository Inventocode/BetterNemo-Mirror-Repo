.class public Lcom/sdk/a/b$a;
.super Lcom/sdk/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/a/b;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/b/c<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sdk/a/b;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/sdk/b/c;-><init>(I)V

    return-void
.end method
