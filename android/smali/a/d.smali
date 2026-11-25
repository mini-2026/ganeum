.class public final synthetic La/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ganeum/calc/MainActivity;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/ganeum/calc/MainActivity;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/d;->a:Lcom/ganeum/calc/MainActivity;

    iput-wide p2, p0, La/d;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ganeum/calc/MainActivity;->h:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, La/d;->a:Lcom/ganeum/calc/MainActivity;

    .line 4
    .line 5
    iget-wide v1, p0, La/d;->b:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/ganeum/calc/MainActivity;->h(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
