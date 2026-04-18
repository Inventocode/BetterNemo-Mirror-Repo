.class public Lcom/unikuwei/mianmi/account/shield/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/unikuwei/mianmi/account/shield/b/b;->a:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/unikuwei/mianmi/account/shield/b/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/unikuwei/mianmi/account/shield/b/a;->b:[Ljava/lang/Object;

    aget-object p0, v0, p0

    return-object p0
.end method
